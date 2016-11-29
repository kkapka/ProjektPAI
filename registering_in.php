<?php
error_reporting(-1);
ini_set('display_errors', 'On');

    include_once "connect.php";

    if(isset($_COOKIE['id'])){
        header("location: dashboard.php");
        exit;
    }

    $connection=getConnection();
    if($connection->connect_errno!=0) {
        echo "Error: ".$connection->connection_errno();
            exit();
    }
    $login_pattern='/[a-zA-Z0-9]{5,15}/';
    $password_pattern='[a-zA-Z0-9]{5,15}/';

    $login=$_POST['login'];

    if(!preg_match($login_pattern,$login)){
        echo "Wprowadziłeś login w błędnym formacie!";
        exit;
    }

    $password=$_POST['password'];
    if(!preg_match($login_pattern,$password)){
        echo "Wprowadziłeś hasło w błędnym formacie!";
        exit;
    }
    $mail=$_POST['mail'];
    $name=$_POST['name'];
    $surname=$_POST['surname'];
    $street=$_POST['street'];
    $street_nr=$_POST['street_nr'];
    $gender=$_POST['genders'];
    $location=$_POST['list-locations'];
    $phone_nr=$_POST['phone_number'];

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
                echo "Błąd dodwania użytkownika!";
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