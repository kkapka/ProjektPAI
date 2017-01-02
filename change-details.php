<?php
session_start();

include_once "./components/important_includes.php";

if(!isset($_COOKIE['id']) && (empty($_POST['login'])||empty($_POST['password'])||empty($_POST['password2'])||empty($_POST['mail'])||empty($_POST['name'])||empty($_POST['surname'])||empty($_POST['street'])
        ||empty($_POST['street_nr'])||empty($_POST['genders'])||empty($_POST['list-locations'])||empty($_POST['phone_number']))){
    header("location: register.php");
    exit;
}

/*login validation----------------------------------------------------*/
$login_pattern = '/^[\p{L}\p{N}_]{5,20}$/u';
$login=$_POST['login'];

if(!preg_match($login_pattern,$login)) {
    echo "Wprowadziłeś login w błędnym formacie!";
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


$sql_location="UPDATE address SET location_address=$location, street_address='$street', street_number_address='$street_nr' WHERE id_address=$_SESSION[id_address]";

$query="SELECT salt_user FROM user WHERE id_user=$_SESSION[id_user]";
$result=mysqli_query($connection,$query);
$row=mysqli_fetch_assoc($result);
$salt=$row['salt_user'];

$password=sha1($password.$salt);

$sql_user=sprintf("UPDATE user SET login_user='%s', password_user='%s', mail_user='%s', name_user='%s', surname_user='%s', gender_user=%d, telephone_number_user=%d WHERE id_user=$_SESSION[id_user]",
    mysqli_real_escape_string($connection,$login),
    mysqli_real_escape_string($connection,$password),
    mysqli_real_escape_string($connection,$mail),
    mysqli_real_escape_string($connection,$name),
    mysqli_real_escape_string($connection,$surname),
    intval($gender),
    intval($phone_nr)
);
$connection->query("start transaction");

if($connection->query($sql_location)){
    if($connection->query($sql_user)){
        echo "Edycja danych użytkownika przebiegła pomyślnie";
    }
    else{
        echo "Błąd edycji danych użytkownika!";
    }
}
else{
    echo "Błąd edycji adresu";
}
$connection->query("commit");
?>