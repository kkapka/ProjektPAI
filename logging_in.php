<?php
    header("Cache-Control: no-store, no-cache, must-revalidate");
    header("Cache-Control: post-check=0, pre-check=0, max-age=0", false);
    header("Pragma: no-cache");

	include_once "connect.php";

    function getSalt($login){
        $connection=getConnection();
        if($result=mysqli_query($connection,"SELECT user_salt FROM user WHERE login_user='$login'")){
            if($row=mysqli_fetch_assoc($result)){
                return $row['user_salt'];
            }
        }
    }

    $connection=getConnection();

    if(!isset($_COOKIE['id']) && (empty($_POST['login'])||empty($_POST['password']))){
        header("location: index.php");
        exit;
    }

    if(isset($_COOKIE['id'])){
        $query="SELECT id_session FROM session WHERE token_session='$_COOKIE[id]' AND DATE_ADD(login_time_session, INTERVAL 1 HOUR)>NOW()";
        $result=mysqli_query($connection,$query);
        $count=mysqli_num_rows($result);

        if($count>0){
            header("location: dashboard.php");
            exit;
        }
        else{
            header("location: index.php");
            exit;
        }
    }

    foreach ($_POST as $k=>$v){
        $_POST[$k]=mysqli_real_escape_string($connection,$v);
    }

    /*login validation----------------------------------------------------*/
    $login_pattern='/^[\p{L}\p{N}_]{5,20}$/u';

    $login=$_POST['login'];
    if(!preg_match($login_pattern,$login)){
        echo "Wprowadziłeś login w błędnym formacie!";
        exit;
    }
    /*--------------------------------------------------------------------*/

    /*password validation-------------------------------------------------*/
    $password=$_POST['password'];
    $password_pattern='/^[^;\'" -]{5,20}$/u';

    if(!preg_match($login_pattern,$password)){
        echo "Wprowadziłeś hasło w błędnym formacie!";
        exit;
    }
    /*--------------------------------------------------------------------*/

if(isset($login)){
        $connection=getConnection();

        $password=sha1($_POST['password'].getSalt($login));

        $query="SELECT id_user,login_user,password_user FROM user WHERE login_user='$login' AND password_user='$password'";

        if($result=mysqli_query($connection,$query)){

            $row_count=mysqli_num_rows($result);

            if($row_count>0){
                $token = sha1(rand(-10000,10000) . microtime()) . sha1(crc32(microtime()) . $_SERVER['REMOTE_ADDR']);
                echo $token;
                $row=mysqli_fetch_assoc($result);
                $id_user=$row["id_user"];
                $query="DELETE FROM session WHERE id_user_session=$id_user";
                mysqli_query($connection,$query);

                $query="INSERT INTO session (id_session,id_user_session,token_session,ip_user_session,
                user_web_browser_session,login_time_session) VALUES
                (NULL,'$row[id_user]','$token','$_SERVER[REMOTE_ADDR]','$_SERVER[HTTP_USER_AGENT]',SYSDATE())";

                mysqli_query($connection,$query);

                if(!mysqli_errno($connection)){
                    setcookie("id",$token,time()+60*60,'/');
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
