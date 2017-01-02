<?php
    echo<<<echo_end
<form action="registering_in.php" method="post">
    Login: <br/> <input type="text" name="login"/><br/>
    Hasło: <br/> <input type="password" name="password"/><br/>
    Powtórz hasło: <br/> <input type="password" name="password2"/>
    Email: <br/><input type="email" name="mail"/>
    Imię: <br/> <input type="text" name="name"/><br/>
    Nazwisko: <br/> <input type="text" name="surname"/><br/>
    Ulica: <br/> <input type="text" name="street"/><br/>
    Nr domu: <br/> <input type="text" name="street_nr"/><br/>
echo_end;


?>
    <?php
    include_once "list-voivodeships.php";

    echo '<div id="counties"></div>';

    echo '<div id="locations"></div>';

    include "gender-list.php";

    echo<<<echo_end
    Numer telefonu: <br/><input type="number" name="phone_number"/>
    <br/><br/>
    <input type="checkbox" name="remember_login_details" required>Akceptuję regulamin</input><br/>
    <input type="submit" value="Zarejestruj się"/><br/>
    </form>

echo_end;
?>