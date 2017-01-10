<?php

include_once "./connect.php";

$connection=getConnection();

if(isset($_COOKIE['id'])&&$_COOKIE['token']){

    foreach ($_COOKIE as $k=>$v){
        $_COOKIE[$k]=htmlentities(mysqli_real_escape_string($connection,$v));
    }

    $connection=getConnection();

    $query="SELECT id_session FROM session WHERE token_session='$_COOKIE[id]' AND second_token_session='$_COOKIE[token]'";

    $result=mysqli_query($connection,$query);
    $row_count=mysqli_num_rows($result);

    if($row_count>0){
        $row=mysqli_fetch_assoc($result);
        $id_session=$row['id_session'];

        $token = sha1(rand(-10000,10000) . microtime()) . sha1(crc32(microtime()) . $_SERVER['REMOTE_ADDR']);
        $token_2=sha1(rand(-1235,8965) . microtime()) . sha1(crc32(microtime()));

        $query="UPDATE session SET token_session='$token', second_token_session='$token_2' WHERE id_session='$id_session'";
        mysqli_query($connection,$query);

        setcookie("id",$token,time()+60*60,'/');
        $_COOKIE['id']=$token;

        setcookie("token",$token_2,time()+60*60,'/');
        $_COOKIE['token']=$token_2;
    }
    else{
        setcookie("id",0,time()-1,'/');
        unset($_COOKIE['id']);

        setcookie("token",0,time()-1,'/');
        unset($_COOKIE['token']);
    }
}

?>