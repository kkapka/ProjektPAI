<?php

	include_once "connect.php";

    $connection=getConnection();
    foreach ($_POST as $k=>$v){
        $_POST[$k]=mysqli_real_escape_string($connection,$v);
    }

    $login=$_POST['login'];
    $password=$_POST['password'];

    $login=htmlentities($login,ENT_QUOTES,"UTF-8");
    $password=htmlentities($password,ENT_QUOTES,"UTF-8");

if(isset($login)){
        $connection=getConnection();
        $query="SELECT id_user,login_user,password_user FROM user WHERE login_user='$login' AND password_user='$password'";

        if($result=mysqli_query($connection,$query)){

            $row_count=mysqli_num_rows($result);

            if($row_count>0){
                $token = md5(rand(-10000,10000) . microtime()) . md5(crc32(microtime()) . $_SERVER['REMOTE_ADDR']);
                $row=mysqli_fetch_assoc($result);
                $id_user=$row["id_user"];
                $query="DELETE FROM session WHERE id_user_session=$id_user";
                mysqli_query($connection,$query);

                $query="INSERT INTO session (id_session,id_user_session,token_session,ip_user_session,
                user_web_browser_session,login_time_session) VALUES
                (NULL,'$row[id_user]','$token','$_SERVER[REMOTE_ADDR]','$_SERVER[HTTP_USER_AGENT]',SYSDATE())";

                mysqli_query($connection,$query);

                if(!mysqli_errno($connection)){
                    setcookie("id",$token,time()+60*60*24,'/');
                    echo "Zalogowano pomyślnie";
                    header("location: dashboard.php");

                }
                else{
                    echo "Błąd dodawania wpisu sesyjnego !";
                }
            }
            else{
                echo "Nie znaleziono użytkownika";
            }
        }
        else{
            echo "Błąd zapytania";
        }
    }
    else{
        echo "Błąd logowania !";
    }
?>