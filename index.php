<?php
	session_start();
	
	if((isset($_SESSION['logged_in']))&&($_SESSION['logged_in']==true)) {
		header("Location: dashboard.php");
		exit();
	}
?>
<!DOCTYPE HTML>
<html lang="pl">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>Serwis ogłoszeniowy</title>
</head>
<body>
    
</body>
    <form action="login.php" method="post">
        Login: <br/> <input type="text" name="login"/><br/>
        Hasło: <br/> <input type="password" name="password"/><br/><br/>
        <input type="submit" value="Zaloguj się"/>
    </form>
<?php
	if(isset($_SESSION['login_error'])){
		echo $_SESSION['login_error'];
	}

?>
</html>