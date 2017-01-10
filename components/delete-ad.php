<?php

header("Cache-Control: no-store, no-cache, must-revalidate");
header("Cache-Control: post-check=0, pre-check=0, max-age=0", false);
header("Pragma: no-cache");

include_once "../connect.php";
include_once "./generate_token.php";

if(!isset($_COOKIE['id'])){
    session_destroy();
    header("location: ../index.php");
    exit();
}
else{
    $connection=getConnection();
    foreach ($_GET as $k=>$v) {
        $_GET[$k]=intval($v);
    }
    $_COOKIE['id']=htmlentities(mysqli_real_escape_string($connection,$_COOKIE['id']));
    $query="SELECT id_user_session FROM session WHERE token_session='$_COOKIE[id]'";

    if($result=mysqli_query($connection,$query)){
        $num_rows=mysqli_num_rows($result);

        if($num_rows>0){
            if(isset($_GET['ad_id']) && isset($_GET['author_ad'])){
                $ad_id=intval($_GET['ad_id']);
                $ad_author=intval($_GET['author_ad']);

                $_COOKIE['id']=htmlentities(mysqli_real_escape_string($connection,$_COOKIE['id']));
                $query="SELECT id_user_session FROM session WHERE token_session='$_COOKIE[id]'";

                if($result=mysqli_query($connection,$query)){
                    $row_count=mysqli_num_rows($result);

                    if($row_count>0){
                        $row=mysqli_fetch_assoc($result);
                        $user_id=$row['id_user_session'];

                        $query="SELECT permission_user_type FROM user JOIN user_type ON type_user=id_user_type
                          WHERE id_user=$user_id";

                        echo $query;

                        if($result=mysqli_query($connection,$query)){
                            $num_rows=mysqli_num_rows($result);
                            if($num_rows>0){
                                $row=mysqli_fetch_assoc($result);
                                $permission=$row['permission_user_type'];

                                if(($ad_author==$user_id) || ($permission>110)){
                                    $query="DELETE FROM ad WHERE id_ad=$ad_id AND author_ad=$ad_author";
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
                                                //echo "12";
                                                header("location: ../dashboard.php");
                                                exit();
                                            }
                                        }
                                        //echo "11";
                                        header("location: ../dashboard.php");
                                        exit();
                                    }
                                    else{
                                        //echo "10";
                                        header("location: ../index.php");
                                    }
                                    $connection->close();
                                    //echo "9";
                                }
                                //echo "8";
                            }
                            //echo "7";
                        }
                        //echo "6";

                    }
                    //echo "5";
                }
                //echo "4";

            }
        }
        //echo "2";
    }
    //echo "1";
    //header("location: ../index.php");
}
?>