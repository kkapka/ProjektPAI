<?php
session_start();

echo<<<echo_end

<form action="logging_in.php" method="post">
    Login: <br/> <input type="text" name="login"/><br/>
    Hasło: <br/> <input type="password" name="password"/><br/><br/>
    <input type="submit" value="Zaloguj się"/><br/>
    <input type="checkbox" name="remember_login_details">Zapamiętać login i hasło?</input>

echo_end;


    if(isset($_SESSION['login_error'])){
        echo "<br/>";
        echo $_SESSION['login_error'];
    }

echo '</form>';

?>