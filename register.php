<?php
	session_start();

	require_once "connect.php";

	if((isset($_SESSION['logged_in']))&&($_SESSION['logged_in']==true)) {
		header("Location: dashboard.php");
		exit();
	}
?>

<!DOCTYPE HTML>
<html lang="pl">
<?php
	require "./components/html-head.php";
?>
<body>
<?php
	require "./components/header.php";
	setSiteTitle("Serwis ogłoszeniowy - Strona rejestracji");

	require "./components/top-bar.php";
	setTopBarTitle("Strona rejestracji");
?>

<div class="row">
	<div class="col-1-4">
		<?php
			require "./components/left-menu.php";
		?>
	</div>
	<div class="col-1-3">
		<?php
			require "./components/register-form.php";
		?>
	</div>
	</div>

<?php
	require "./components/footer.php";
?>
</body>
</html>