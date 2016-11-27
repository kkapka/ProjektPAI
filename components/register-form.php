<?php
    echo<<<echo_end
<form action="registering_in.php" method="post">
    Login: <br/> <input type="text" name="login" onblur="validateLogin(this)" autocomplete="off" required/><br/>
    Hasło: <br/> <input type="password" name="password"/><br/>
    Powtórz hasło: <br/> <input type="password" name="password"/>
    Email: <br/><input type="email" name="mail"/>
    Imię: <br/> <input type="text" name="name"/><br/>
    Nazwisko: <br/> <input type="text" name="surname"/><br/>
    Ulica: <br/> <input type="text" name="street"/><br/>
    Nr domu: <br/> <input type="text" name="street_nr"/><br/>
echo_end;


?>
    <?php
    $connection=getConnection();

    include_once "list-voivodeships.php";

    echo '<div id="counties"></div>';

    echo '<div id="locations"></div>';

    include "gender-list.php";

    $connection->close();

    echo<<<echo_end
    Numer telefonu: <br/><input type="number" name="phone_number"/>
    <br/><br/>
    <input type="checkbox" name="remember_login_details">Akceptuję regulamin</input><br/>
    <input type="submit" value="Zarejestruj się"/><br/>

echo_end;

    if(isset($_SESSION['login_error'])){
        echo "<br/>";
        echo $_SESSION['login_error'];
    }

echo '</form>';
?>