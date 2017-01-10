<?php
session_start();

include_once "./show_errors.php";
include_once "./connect.php";

function generateFolderName(){
    return md5(rand(-10000,10000).microtime());
}

global $connection;
global $generated_folder_name;

if(isset($_COOKIE['id']) && isset($_COOKIE['token'])){
    $connection=getConnection();
    $_COOKIE['id']=mysqli_real_escape_string($connection,htmlentities($_COOKIE['id']));
    $_COOKIE['token']=mysqli_real_escape_string($connection,htmlentities($_COOKIE['token']));

    $query="SELECT id_user_session FROM session WHERE token_session='$_COOKIE[id]' AND second_token_session='$_COOKIE[token]'";
    $result=mysqli_query($connection,$query);
    $num_rows=mysqli_num_rows($result);

    if($num_rows>0){
        //$connection=getConnection();

        $generated_folder_name=generateFolderName();
        $target_dir = "./uploads/".$generated_folder_name."/";

        mkdir($target_dir,0775);

        $count=count($_FILES['fileToUpload']['tmp_name']);

        if($count>0){
            for ($i=0;$i<$count;$i++){
                if(!empty($_FILES["fileToUpload"]["name"][$i])){
                    $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"][$i]);
                    $uploadOk = 1;
                    $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);

                    if(isset($_POST["submit"])) {
                        $check = getimagesize($_FILES["fileToUpload"]["tmp_name"][$i]);
                        if($check !== false) {
                            echo "Plik jest zdjęciem - " . $check["mime"] . "\n";
                            $uploadOk = 1;
                        } else {
                            echo "Plik nie jest zdjęciem !\n";
                            $uploadOk = 0;
                        }
                    }

                    if (file_exists($target_file)) {
                        echo "Plik już istnieje !\n";
                        $uploadOk = 0;
                    }

                    if ($_FILES["fileToUpload"]["size"][$i] > 500000) {
                        echo "Twój plik jest za duży !\n";
                        $uploadOk = 0;
                    }

                    if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
                        && $imageFileType != "gif" ) {
                        echo "Tylko pliki JPG, JPEG, PNG & GIF są dozwolone !\n";
                        $uploadOk = 0;
                    }

                    if ($uploadOk == 0) {
                        echo "Twój plik nie został wgrany\n";

                    } else {
                        if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"][$i], $target_file)) {

                            $fil_nam=$_FILES["fileToUpload"]["name"][$i];
                            $fil_nam_pattern="/^[^';-]+$/";

                            if(!preg_match($fil_nam_pattern,$fil_nam)){
                                echo "Błąd podczas wysyłania pliku";
                                continue;
                            }

                            $photo_name=$generated_folder_name.'/'.basename($_FILES["fileToUpload"]["name"][$i]);
                            $query="INSERT INTO photo (id_photo,location_photo) VALUES (NULL,'$photo_name')";
                            $result=mysqli_query($connection,$query);

                            $last_inserted_photo_id=mysqli_insert_id($connection);

                            $query="INSERT INTO gallery (id_ad_gallery,id_photo_gallery) VALUES ($_SESSION[ad_id],$last_inserted_photo_id)";
                            $result=mysqli_query($connection,$query);


                            echo "Plik ". basename( $_FILES["fileToUpload"]["name"][$i]). " został wgrany\n";
                        } else {
                            echo "Wystąpił błąd podczas wgrywania twojego pliku !\n";
                        }
                    }
                }
            }

        }
    }
}
else{
    header("location: index.php");
}
?>