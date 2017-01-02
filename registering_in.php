<?php /* @formatter:off */

    header("Cache-Control: no-store, no-cache, must-revalidate");
    header("Cache-Control: post-check=0, pre-check=0, max-age=0", false);
    header("Pragma: no-cache");

    include_once "connect.php";
    $connection=getConnection();

    function generateSalt(){
        $seed = str_split('abcdefghijklmnopqrstuvwxyz'
            .'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
            .'0123456789');
        shuffle($seed);
        $rand = '';
        foreach (array_rand($seed, 10) as $k) $rand .= $seed[$k];
        return $rand;
    }

    if(!isset($_COOKIE['id']) && (empty($_POST['login'])||empty($_POST['password'])||empty($_POST['password2'])||empty($_POST['mail'])||empty($_POST['name'])||empty($_POST['surname'])||empty($_POST['street'])
    ||empty($_POST['street_nr'])||empty($_POST['genders'])||empty($_POST['list-locations'])||empty($_POST['phone_number']))){
        header("location: register.php");
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

    if($connection->connect_errno!=0) {
        echo "Error: " . $connection->connection_errno();
        exit();
    }

    /*login validation----------------------------------------------------*/
    $login_pattern = '/^[\p{L}\p{N}_]{5,20}$/u';
    $login=$_POST['login'];

    if(!preg_match($login_pattern,$login)) {
        echo "Wprowadziłeś login w błędnym formacie!";
        exit;
    }

    $query="SELECT login_user FROM user WHERE login_user='$login'";
    $result=mysqli_query($connection,$query);
    $row_count=mysqli_num_rows($result);

    if($row_count>0) {
        echo "Użytkownik o podanym loginie już istnieje !";
        exit;
    }
    /*--------------------------------------------------------------------*/


    /*password validation-------------------------------------------------*/
    $password_pattern='/^[^;\'" -]{5,20}$/u';
    $password=$_POST['password'];

    if(!preg_match($password_pattern,$password)){
        echo "Wprowadziłeś hasło w błędnym formacie!";
        exit;
    }
    else{
        if($password!=$_POST['password2']){
            echo "Hasła są różne!";
            exit;
        }
    }
    /*--------------------------------------------------------------------*/


    /*mail validation-----------------------------------------------------*/
    $mail_pattern="/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{1,255})$/";
    $mail=$_POST['mail'];
    if(!preg_match($mail_pattern,$mail)){
        echo "Wprowadziłeś mail w błędnym formacie!";
        exit;
    }

    $query="SELECT mail_user FROM user WHERE mail_user='$mail'";
    $result=mysqli_query($connection,$query);
    $row_count=mysqli_num_rows($result);

    if($row_count>0){
        echo "Użytkownik o podanym adresie mailowym już istnieje !";
        exit;
    }
    /*--------------------------------------------------------------------*/


    /*name validation-----------------------------------------------------*/
    $name_pattern="/^[\p{L}]{1,100}$/u";
    $name=$_POST['name'];

    if(!preg_match($name_pattern,$name)){
        echo "Wprowadziłeś imie w błędnym formacie!";
        exit;
    }
    /*--------------------------------------------------------------------*/


    /*surname validation--------------------------------------------------*/
    $surname_pattern="/^[\p{L}]{1,100}$/u";
    $surname=$_POST['surname'];

    if(!preg_match($surname_pattern,$surname)){
        echo "Wprowadziłeś nazwisko w błędnym formacie!";
        exit;
    }
    /*--------------------------------------------------------------------*/


    /*street validation---------------------------------------------------*/
    $street_pattern="/[^;%=~+{}#^*@!`]{1,100}/u";
    $street=$_POST['street'];
    if(!preg_match($street_pattern,$street)){
        echo "Wprowadziłeś ulicę w błędnym formacie!";
        exit;
    }
    /*--------------------------------------------------------------------*/


    /*street nr validation---------------------------------------------------*/
    $street_nr_pattern="/[^;%=~+{}#^*@!`]{1,100}/u";
    $street_nr=$_POST['street_nr'];

    if(!preg_match($street_nr_pattern,$street_nr)){
        echo "Wprowadziłeś numer ulicy w błędnym formacie!";
        exit;
    }
    /*--------------------------------------------------------------------*/


    /*gender validation---------------------------------------------------*/

    $gender_pattern="/^[0-9]{1,10}$/";
    $gender=$_POST['genders'];

    if(!preg_match($gender_pattern,$gender)){
        echo "Wybrałeś nieprawidłową płeć!";
        exit;
    }


    $query="SELECT id_gender FROM gender WHERE id_gender=$gender";
    $result=mysqli_query($connection,$query);
    $row_count=mysqli_num_rows($result);

    if($row_count<1){
        echo "Wybrana płeć nie istnieje !";
        exit;
    }
    /*--------------------------------------------------------------------*/


    /*location validation-------------------------------------------------*/

    $location_pattern="/^[0-9]{1,10}$/";
    $location=$_POST['list-locations'];

    if(!preg_match($location_pattern,$location)){
        echo "Wybrałeś nieprawidłową lokalizację!";
        exit;
    }

    $query="SELECT id_location FROM location WHERE id_location=$location";
    $result=mysqli_query($connection,$query);
    $row_count=mysqli_num_rows($result);

    if($row_count<1){
        echo "Wybrana lokalizacja nie istnieje !";
        exit;
    }
    /*--------------------------------------------------------------------*/


    /*phone validation----------------------------------------------------*/
    $phone_nr_pattern="/^[\p{N}]{1,10}$/";
    $phone_nr=$_POST['phone_number'];

    if(!preg_match($phone_nr_pattern,$phone_nr)){
        echo "Wpisałeś numer telefonu w złym formacie!";
        exit;
    }
    /*--------------------------------------------------------------------*/


    $sql_location="INSERT INTO address(id_address,location_address,street_address,street_number_address) VALUES(NULL,'$location','$street','$street_nr')";
    $sql_last_id_in_address="SET @last_id_in_address = LAST_INSERT_ID()";

    $salt=generateSalt();
    $password=sha1($password.$salt);

    $sql_user=sprintf("CALL add_user('%s','%s','%s',%d,'%s','%s',%d,%d,@last_id_in_address,'%s')",
        mysqli_real_escape_string($connection,$login),
        mysqli_real_escape_string($connection,$password),
        mysqli_real_escape_string($connection,$mail),
        intval(3),
        mysqli_real_escape_string($connection,$name),
        mysqli_real_escape_string($connection,$surname),
        intval($gender),
        intval($phone_nr),
        $salt
        );
    $connection->query("start transaction");

    if($connection->query($sql_location)){
        if($connection->query($sql_last_id_in_address)){
            if($connection->query($sql_user)){
                echo "Dodano użytkownika";
            }
            else{
                echo "Błąd dodawania użytkownika!";
            }
        }
        else{
            echo "Błąd łączenia adresu z użytkownikiem";
        }
    }
    else{
        echo "Błąd tworzenia adresu";
    }

    $connection->query("commit");
?>