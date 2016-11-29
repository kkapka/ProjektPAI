<?php
    include_once "connect.php";

    header("Cache-Control: no-store, no-cache, must-revalidate");
    header("Cache-Control: post-check=0, pre-check=0, max-age=0", false);
    header("Pragma: no-cache");

    if(isset($_COOKIE['id'])){
        header("location: dashboard.php");
        exit;
    }

    if(!isset($_COOKIE['id'])){
        header("location: index.php");
        exit;
    }

    $connection=getConnection();

    if($connection->connect_errno!=0) {
        echo "Error: ".$connection->connection_errno();
            exit();
    }

    $login_pattern='/^[a-zA-Z0-9]{5,20}$/';
    $login=$_POST['login'];

    if(!preg_match($login_pattern,$login)){
        echo "Wprowadziłeś login w błędnym formacie!";
        exit;
    }

    $password_pattern='/^[a-zA-Z0-9]{5,20}$/';
    $password=$_POST['password'];

    if(!preg_match($login_pattern,$password)){
        echo "Wprowadziłeś hasło w błędnym formacie!";
        exit;
    }

    $mail_pattern="/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{1,255})$/";
    $mail=$_POST['mail'];
    if(!preg_match($mail_pattern,$mail)){
        echo "Wprowadziłeś mail w błędnym formacie!";
        exit;
    }

    $name_pattern="/^[\p{L}]{1,100}$/u";
    $name=$_POST['name'];

    if(!preg_match($name_pattern,$name)){
        echo "Wprowadziłeś imie w błędnym formacie!";
        exit;
    }
    $surname_pattern="/^[\p{L}]{1,100}$/u";
    $surname=$_POST['surname'];

    if(!preg_match($surname_pattern,$surname)){
        echo "Wprowadziłeś nazwisko w błędnym formacie!";
        exit;
    }

    //[^;%=~+{}#^*@!`\$-]+

    $street_pattern="/[^;%=~+{}#^*@!`\$-]+/";
    $street=$_POST['street'];
    if(!preg_match($street_pattern,$street)){
        echo "Wprowadziłeś ulicę w błędnym formacie!";
        exit;
    }

    $street_nr_pattern="/[^;%=~+{}#^*@!`\$-]+/";
    $street_nr=$_POST['street_nr'];

    if(!preg_match($street_nr_pattern,$street_nr)){
        echo "Wprowadziłeś numer ulicy w błędnym formacie!";
        exit;
    }

    $gender_pattern="/^[0-9]{1,10}$/";
    $gender=$_POST['genders'];

    if(!preg_match($gender_pattern,$gender)){
        echo "Wybrałeś nieprawidłową płeć!";
        exit;
    }

    $location_pattern="/^[0-9]{1,10}$/";
    $location=$_POST['list-locations'];

    if(!preg_match($location_pattern,$location)){
        echo "Wybrałeś nieprawidłową lokalizację!";
        exit;
    }

    $phone_nr_pattern="/^[0-9]{1,10}$/";
    $phone_nr=$_POST['phone_number'];

    if(!preg_match($phone_nr_pattern,$phone_nr)){
        echo "Wpisałeś numer telefonu w złym formacie!";
        exit;
    }

    $query="SELECT login_user FROM user WHERE login_user='$login'";
    $result=mysqli_query($connection,$query);
    $row_count=mysqli_num_rows($result);

    if($row_count>0){
        echo "Użytkownik o podanym loginie już istnieje !";
        exit;
    }

    $query="SELECT mail_user FROM user WHERE mail_user='$mail'";
    $result=mysqli_query($connection,$query);
    $row_count=mysqli_num_rows($result);

    if($row_count>0){
        echo "Użytkownik o podanym adresie mailowym już istnieje !";
        exit;
    }

    $sql_location="INSERT INTO address(id_address,location_address,street_address,street_number_address) VALUES(NULL,'$location','$street','$street_nr')";
    $sql_last_id_in_address="SET @last_id_in_address = LAST_INSERT_ID()";

    $sql_user=sprintf("CALL add_user('%s','%s','%s',%d,'%s','%s',%d,%d,@last_id_in_address)",
        mysqli_real_escape_string($connection,$login),
        mysqli_real_escape_string($connection,$password),
        mysqli_real_escape_string($connection,$mail),
        intval(3),
        mysqli_real_escape_string($connection,$name),
        mysqli_real_escape_string($connection,$surname),
        intval($gender),
        intval($phone_nr)
        );

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

?>