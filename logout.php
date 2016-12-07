<?php
    include_once "./components/important_includes.php";

    if(isset($_COOKIE['id'])){
        $connection=getConnection();

        foreach($_SERVER as $k=>$v){
            $_SERVER[$k]=mysqli_real_escape_string($connection,$v);
        }

        $query="DELETE FROM session WHERE token_session='$_COOKIE[id]' AND user_web_browser_session='$_SERVER[HTTP_USER_AGENT]'";

        if(mysqli_query($connection,$query)){
            setcookie("id",0,time()-1,'/');
            unset($_COOKIE['id']);
        }
    }

	header("Location: index.php");

?>