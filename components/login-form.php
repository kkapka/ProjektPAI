<form action="logging_in.php" method="post" id="logging-form">
    Login: <br/> <input type="text" name="login" id="login"/><br/>
    Długość od 5 do 20 znaków, dozwolone znaki: małe i duże litery, cyfry, znak podkreślenia _</br></br>
    Hasło: <br/> <input type="password" name="password" id="password"/><br/>
    Długość od 5 do 20 znaków, dozwolone wszystkie znaki za wyjątkiem spacji, znaków ; ' " -
    </br><br/>
    <input type="submit" value="Zaloguj się"/><br/>
</form>
<div id="error-info">
<?php
session_start();

if(isset($_SESSION['login-error-info'])){
    echo $_SESSION['login-error-info'];
}
session_unset();
?>
</div>
<script>
    $(document).ready(function () {
        var log=$("#login");
        var pass=$("#password");

        log.on("blur",function () {
            try{
                if(log.val().length==0){
                    throw "Login jest pusty !";
                }
                else if(log.val().length<5){
                    throw "Login jest zbyt krótki !";
                }
            }
            catch (excpt){
                $("#error-info").html("")
                $("#error-info").html(excpt);
            }


        });

        pass.on("blur",function () {
            try{
                if(pass.val().length==0){
                    throw "Hasło jest puste !";
                }
                else if(pass.val().length<5){
                    throw "Hasło jest zbyt krótkie !";
                }
            }
            catch (excpt){
                $("#error-info").html("")
                $("#error-info").html(excpt);
            }


        });
    })

</script>
