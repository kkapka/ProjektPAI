<?php
error_reporting(0);
header("Cache-Control: no-store, no-cache, must-revalidate");
header("Cache-Control: post-check=0, pre-check=0, max-age=0", false);
header("Pragma: no-cache");

include_once "../connect.php";
include_once "./generate_token.php";

$user_id=intval($_POST['user_id']);

if(isset($_COOKIE['id']) && isset($_COOKIE['token'])){
    $connection=getConnection();
    mysqli_autocommit($connection,false);
    if($user_id!=NULL){

        $_COOKIE['id']=htmlentities(mysqli_real_escape_string($connection,$_COOKIE['id']));
        $_COOKIE['token']=htmlentities(mysqli_real_escape_string($connection,$_COOKIE['token']));
        $query="SELECT permission_user_type FROM (user JOIN user_type ON type_user=id_user_type) JOIN session ON id_user_session=id_user WHERE token_session='$_COOKIE[id]' AND second_token_session='$_COOKIE[token]'";
        $row=mysqli_fetch_assoc(mysqli_query($connection,$query));

        if($row['permission_user_type']>=111){
            $query="SELECT * FROM ad WHERE author_ad={$user_id}";
            if($result2=mysqli_query($connection,$query)){
                while($row=mysqli_fetch_assoc($result2)){
                    $ad_id=$row['id_ad'];
                    //if($result=mysqli_query($connection,$query)){
                    $query="SELECT location_photo FROM photo JOIN gallery ON id_photo_gallery=id_photo WHERE id_ad_gallery=$ad_id";
                    if($result=mysqli_query($connection,$query)){
                        $row=mysqli_fetch_assoc($result);

                        $folder_name=explode('/',$row['location_photo']);
                        $query="DELETE FROM gallery WHERE id_ad_gallery=$ad_id";
                        if($result=mysqli_query($connection,$query)){
                            //print_r(glob('.././uploads/'.$folder_name[0].'/*'));
                            chmod('../uploads/'.$folder_name[0].'/',0777);
                            array_map('unlink',glob('../uploads/'.$folder_name[0].'/*'));
                            rmdir('../uploads/'.$folder_name[0].'/');

                            $query="DELETE FROM ad WHERE id_ad=$ad_id";
                            mysqli_query($connection,$query);
                            //echo "13";
                            //header("location: ../dashboard.php");
                            //exit();

                        }
                    }
                    //}
                    else{
                    }
                }
            }
            //$query="DELETE FROM user WHERE id_user=$user_id";
            $query="call deleteuser($user_id)";

            if(mysqli_query($connection,$query)){
                mysqli_commit($connection);
                echo "Usunięto użytkownika";
            }
            else{
                mysqli_rollback($connection);
                echo "Błąd przu usuwaniu użytkownika";
            }
        }
        else{
            header("location: index.php");
            exit;
        }

    }
}
else{
    header("location: index.php");
    exit;
}


?>