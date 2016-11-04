<?php
    session_start();
    require_once "connect.php";

    if((isset($_SESSION['logged_in']))&&($_SESSION['logged_in']==true)) {
        header("Location: index.php");
        exit();
    }

    $connection=getConnection();
    if($connection->connect_errno!=0) {
        echo "Error: ".$connection->connection_errno();
            exit();
    }

    $login=$_POST['login'];
    $password=$_POST['password'];
    $mail=$_POST['mail'];
    $name=$_POST['name'];
    $surname=$_POST['surname'];
    $street=$_POST['street'];
    $street_nr=$_POST['street_nr'];
    $gender=$_POST['genders'];
    $voivodeship=$_POST['voivodeships'];
    $county=$_POST['countys'];
    $location=$_POST['locations'];
    $phone_nr=$_POST['phone_number'];

    $sql_location="INSERT INTO address(id_address,location_address,street_address,street_number_address) VALUES(NULL,'$location','$street','$street_nr')";
    $sql_last_id_in_address="SET @last_id_in_address = LAST_INSERT_ID()";
    $sql_user="INSERT INTO user (id_user,login_user,password_user,mail_user,type_user,name_user,surname_user,gender_user,telephone_number_user,address_user,register_datetime_user,lock_user) 
    VALUES (NULL,'$login','$password','$mail','3','$name','$surname','$gender','$phone_nr',@last_id_in_address,SYSDATE(),'no')";

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