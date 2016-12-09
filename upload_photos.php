<?php
include_once "./show_errors.php";

function generateFolderName(){
    return md5(rand(-10000,10000).microtime());
}

$target_dir = "./uploads/".generateFolderName()."/";

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
                    echo "File is an image - " . $check["mime"] . ".";
                    $uploadOk = 1;
                } else {
                    echo "File is not an image.";
                    $uploadOk = 0;
                }
            }

            if (file_exists($target_file)) {
                echo "Sorry, file already exists.";
                $uploadOk = 0;
            }

            if ($_FILES["fileToUpload"]["size"][$i] > 500000) {
                echo "Sorry, your file is too large.";
                $uploadOk = 0;
            }

            if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
                && $imageFileType != "gif" ) {
                echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
                $uploadOk = 0;
            }

            if ($uploadOk == 0) {
                echo "Sorry, your file was not uploaded.";

            } else {
                if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"][$i], $target_file)) {
                    echo "The file ". basename( $_FILES["fileToUpload"]["name"][$i]). " has been uploaded.";
                } else {
                    echo "Sorry, there was an error uploading your file.";
                }
            }
        }
    }
}
?>
