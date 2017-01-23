<?php
session_start();
    include_once "./components/important_includes.php";

    function getSalt($login){
        $connection=getConnection();
        if($result=mysqli_query($connection,"SELECT salt_user FROM user WHERE login_user='$login'")){
            if($row=mysqli_fetch_assoc($result)){
                return $row['salt_user'];
            }
        }
    }

    $connection=getConnection();

    foreach($_POST as $k=>$v){
        $_POST[$k]=mysqli_real_escape_string($connection,$v);
    }

    foreach($_COOKIE as $k=>$v){
        $_COOKIE[$k]=htmlentities(mysqli_real_escape_string($connection,$v));

    }

    if((!isset($_COOKIE['id']) || !$_COOKIE['token']) && (empty($_POST['login'])||empty($_POST['password']))){
        header("location: login.php");
        exit;
    }

    if(isset($_COOKIE['id'])&& $_COOKIE['token']){
        $query="SELECT id_session FROM session WHERE token_session='$_COOKIE[id]' AND secon_token_session='$_COOKIE[id]'";
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

    try{
        /*login validation----------------------------------------------------*/
        $login_pattern='/^[\p{L}\p{N}_]{5,20}$/u';

        $login=$_POST['login'];
        if(!preg_match($login_pattern,$login)){
            /*echo "Wprowadziłeś login w błędnym formacie!";
            exit;*/
             throw new Exception("Wprowadziłeś login w błędnym formacie!");
        }
        /*--------------------------------------------------------------------*/

        /*password validation-------------------------------------------------*/
        $password=addslashes($_POST['password']);
        /*$password_pattern='/^[^;<\'" -]{5,20}$/u';

        if(!preg_match($login_pattern,$password)){
            //echo "Wprowadziłeś hasło w błędnym formacie!";
            throw new Exception("Wprowadziłeś hasło w błędnym formacie!");
        }*/

        /*--------------------------------------------------------------------*/
    }
    catch(Exception $e){

        $_SESSION['login-error-info']=$e->getMessage();
        header("location: login.php");
        exit;
    }

if(isset($login)){
        $connection=getConnection();

        $password=sha1($_POST['password'].getSalt($login));

        $query="SELECT * FROM user WHERE login_user='$login' AND password_user='$password'";

        if($result=mysqli_query($connection,$query)){

            $row_count=mysqli_num_rows($result);

            if($row_count>0){
                $token = sha1(rand(-10000,10000) . microtime()) . sha1(crc32(microtime()) . $_SERVER['REMOTE_ADDR']);
                $token_2=sha1(rand(-1235,8965) . microtime()) . sha1(crc32(microtime()));
                $row=mysqli_fetch_assoc($result);

                $bad_login_limit=3;
                $lockout_time=60*10;
                if(($row['failed_login_count_user']>=$bad_login_limit) && (time()-strtotime($row['first_failed_login_user'])<$lockout_time)){
                    //echo "Jesteś zablokowany! Odczekaj kilka minut";
                    //exit;

                    $_SESSION['login-error-info']="Jesteś zablokowany! Musisz poczekać 10 minut na kolejną próbę zalogowania";
                    header("location: login.php");
                    exit;
                }

                $id_user=$row["id_user"];
                $query="DELETE FROM session WHERE id_user_session=$id_user";
                mysqli_query($connection,$query);

                $query="INSERT INTO session (id_session,id_user_session,token_session,ip_user_session,
                user_web_browser_session,login_time_session,second_token_session) VALUES
                (NULL,'$row[id_user]','$token','$_SERVER[REMOTE_ADDR]','$_SERVER[HTTP_USER_AGENT]',SYSDATE(),'$token_2')";

                mysqli_query($connection,$query);

                if(!mysqli_errno($connection)){
                    setcookie("id",$token,time()+60*60,'/');
                    setcookie("token",$token_2,time()+60*60,'/');
                    header("location: dashboard.php");

                }
                else{
                    echo "Błąd dodawania wpisu sesyjnego !";
                }
            }
            else{
                //echo "Nie znaleziono użytkownika";
                $bad_login_limit=3;
                $lockout_time=60*10;
                $query="SELECT first_failed_login_user, failed_login_count_user FROM user WHERE login_user='$login'";

                $result=mysqli_query($connection,$query);
                $row_count=mysqli_num_rows($result);
                if($row_count>0){

                    $row=mysqli_fetch_assoc($result);

                    if(($row['failed_login_count_user']>=$bad_login_limit) && (time()-strtotime($row['first_failed_login_user'])<$lockout_time)){
                        //echo "Jesteś zablokowany! Odczekaj kilka minut";
                        //exit;

                        $_SESSION['login-error-info']="Jesteś zablokowany! Musisz poczekać 10 minut na kolejną próbę zalogowania";
                        header("location: login.php");
                        exit;
                    }else{
                        if(time()-strtotime($row['first_failed_login_user'])>$lockout_time){
                            $query="UPDATE user SET first_failed_login_user=SYSDATE(), failed_login_count_user=1 WHERE login_user='$login'";
                            mysqli_query($connection,$query);
                    }
                        else{
                            $query="UPDATE user SET failed_login_count_user=failed_login_count_user+1 WHERE login_user='$login'";
                            mysqli_query($connection,$query);
                        }
                    }
                    $_SESSION['login-error-info']="Nie znaleziono użytkownika";
                    header("location: login.php");
                    exit;
                }
                else{
                    $_SESSION['login-error-info']="Nie znaleziono użytkownika";
                    header("location: login.php");
                    exit;
                }
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
