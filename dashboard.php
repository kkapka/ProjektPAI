<?php
	session_start();

	if(!(isset($_SESSION['logged_in']))&&($_SESSION['logged_in']==true)) {
		header("Location: index.php");
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
    <title>Serwis ogłoszeniowy</title>
</head>
<body>
	<div class="row">
		<div class="col-1">
			<div class="header">Panel użytkownika</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-1">
			<div class="bar">Panel użytkownika</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-1-4">
			<div class="bar">Menu</div>
			<ul class="left-menu-ul">
				<li class="left-menu-li">
					<a href="index.php">Domowa</a>
				</li>
				<li class="left-menu-li">
					<a href="logout.php">Wyloguj się</a>
				</li>
			</ul>


		</div>
		<div class="col-2-3">
			<div class="bar">Witaj!</div>
			Witaj <?php echo $_SESSION['user']; ?>
			<ul>
				<li>Kraków</li>
				<li>Warszawa</li>
				<li>Gdańsk</li>
			</ul>
		</div>
	</div>
	
	<div class="row">
		<div class="col-1">
			<div class="footer-bar">Napisane przez: Kamil Kapka</div>
		</div>
	</div>
</body>
</html>