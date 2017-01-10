<?php
    include_once "./components/important_includes.php";

    if(isset($_COOKIE['id']) && $_COOKIE['token']){
        $connection=getConnection();

        foreach($_SERVER as $k=>$v){
            $_SERVER[$k]=mysqli_real_escape_string($connection,$v);
        }

        $_COOKIE['id']=htmlentities(mysqli_real_escape_string($connection,$_COOKIE['id']));
        $_COOKIE['token']=htmlentities(mysqli_real_escape_string($connection,$_COOKIE['token']));

        $query="DELETE FROM session WHERE token_session='$_COOKIE[id]' AND second_token_session='$_COOKIE[token]' AND user_web_browser_session='$_SERVER[HTTP_USER_AGENT]'";

        if(mysqli_query($connection,$query)){
            setcookie("id",0,time()-1,'/');
            unset($_COOKIE['id']);

            setcookie("token",0,time()-1,'/');
            unset($_COOKIE['token']);
        }
    }

	header("Location: index.php");

?>