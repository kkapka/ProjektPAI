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
    <link rel="stylesheet" type="text/css" href="flexbox-style.css">
   	<title>Strona logowania - Serwis ogłoszeniowy</title>
</head>
<body>
	<div class="row">
		<div class="col-1">
			<div class="header">Serwis ogłoszeniowy</div>
		</div>
	</div>

	<div class="row">
		<div class="col-1">
			<div class="bar">Strona logowania</div>
		</div>
	</div>

<div class="row">
	<div class="col-1-4">
		<div class="bar">Menu</div>
		<ul class="left-menu-ul">
			<li class="left-menu-li">
				<a href="login.php">Zaloguj się</a>
			</li>
			<li class="left-menu-li">
				<a href="register.php">Zarejestruj się</a>
			</li>
		</ul>
	</div>
	<div class="col-1-3">
				<form action="logging_in.php" method="post">
					Login: <br/> <input type="text" name="login"/><br/>
					Hasło: <br/> <input type="password" name="password"/><br/><br/>
					<input type="submit" value="Zaloguj się"/><br/>
					<input type="checkbox" name="remember_login_details">Zapamiętać login i hasło?</input>
					<?php
						if(isset($_SESSION['login_error'])){
						echo "<br/>";
						echo $_SESSION['login_error'];
						}
					?>
 				</form>
	</div>
	</div>

	<div class="row">
		<div class="col-1">
			<div class="footer-bar">Napisane przez: Kamil Kapka</div>
		</div>
	</div>
</body>
</html>