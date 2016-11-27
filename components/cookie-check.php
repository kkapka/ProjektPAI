<?php
    include_once "connect.php";

    $connection=getConnection();

    foreach ($_COOKIE as $k=>$v){
        $_COOKIE[$k]=mysqli_real_escape_string($connection,$v);
    }

    if(!isset($_COOKIE['id'])){
        header("location: login.php");
        exit;
    }

    $query="SELECT id_user_session FROM session WHERE token_session='$_COOKIE[id]'
         AND user_web_browser_session='$_SERVER[HTTP_USER_AGENT]'
         AND ip_user_session='$_SERVER[REMOTE_ADDR]'";

    $result=mysqli_query($connection,$query);
    $row=mysqli_fetch_assoc($result);

    if(empty($row['id_user_session'])){
        header("location: login.php");
        exit;
    }
?>