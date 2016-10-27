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
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Serwis ogłoszeniowy</title>
</head>
<body>
	<form action="login.php" method="post">
		Login: <br/> <input type="text" name="login"/><br/>
		Hasło: <br/> <input type="password" name="password"/><br/><br/>
		<input type="submit" value="Zaloguj się"/><br/>
		<input type="checkbox" name="remember_login_details">Zapamiętać login i hasło?</input>
 	</form>
</body>

<?php
	if(isset($_SESSION['login_error'])){
		echo $_SESSION['login_error'];
	}
?>
</html>