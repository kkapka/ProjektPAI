<?php

header("Cache-Control: no-store, no-cache, must-revalidate");
header("Cache-Control: post-check=0, pre-check=0, max-age=0", false);
header("Pragma: no-cache");

include_once "../connect.php";
include_once "./generate_token.php";

$user_id=$_POST['user_id'];

$connection=getConnection();

$query="SELECT * FROM ad WHERE author_ad=$user_id";
$result=mysqli_query($connection,$query);

while($row=mysqli_fetch_assoc($result)){
    $ad_id=$row['id_ad'];
    $query="DELETE FROM ad WHERE id_ad=$ad_id";
    if($result=mysqli_query($connection,$query)){
        $query="SELECT location_photo FROM photo JOIN gallery ON id_photo_gallery=id_photo WHERE id_ad_gallery=$ad_id";
        if($result=mysqli_query($connection,$query)){
            if($row=mysqli_fetch_assoc($result)){
                $folder_name=explode('/',$row['location_photo']);

                $query="DELETE FROM gallery WHERE id_ad_gallery=$ad_id";
                if($result=mysqli_query($connection,$query)){
                    //print_r(glob('.././uploads/'.$folder_name[0].'/*'));
                    array_map('unlink',glob('.././uploads/'.$folder_name[0].'/*'));
                    rmdir('.././uploads/'.$folder_name[0].'/');
                    //echo "13";
                    header("location: ../dashboard.php");
                    exit();
                }
            }
        }
    }
    else{
    }
}

$query="DELETE FROM user WHERE id_user=$user_id";

if(mysqli_query($connection,$query)){
    echo "Usunięto użytkownika";
}
else{
    echo "Błąd przu usuwaniu użytkownika";
}

?>