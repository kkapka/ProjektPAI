<?php
	session_start();
	
	if(!isset($_SESSION['logged_in'])){
		header("Location: index.php");
		exit();
	}
?>
<!DOCTYPE HTML>
<html lang="pl">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>Twoja tablica</title>
</head>
<body>
<?php
	echo "Witaj ".$_SESSION['user']."! <a href=\"/logout.php\">[Wyloguj się]</a><br/>";
	echo "Twój adres mailowy to:".$_SESSION['mail'];
?>    
</body>
</html>