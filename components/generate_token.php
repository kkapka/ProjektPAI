<?php

if(isset($_COOKIE['id'])){
    $connection=getConnection();

    $query="SELECT id_session FROM session WHERE token_session='$_COOKIE[id]'";

    $result=mysqli_query($connection,$query);
    $row_count=mysqli_num_rows($result);

    if($row_count>0){
        $row=mysqli_fetch_assoc($result);
        $id_session=$row['id_session'];

        $token = sha1(rand(-10000,10000) . microtime()) . sha1(crc32(microtime()) . $_SERVER['REMOTE_ADDR']);

        $query="UPDATE session SET token_session='$token' WHERE id_session=$id_session";
        mysqli_query($connection,$query);
        setcookie("id",$token,time()+60*60,'/');
        $_COOKIE['id']=$token;
    }
    else{
        setcookie("id",0,time()-1,'/');
        unset($_COOKIE['id']);
    }
}

?>