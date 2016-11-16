<?php
	session_start();
	
	if((isset($_SESSION['logged_in']))&&($_SESSION['logged_in']==true)) {
		header("Location: dashboard.php");
		exit();
	}
	require_once "./connect.php";
?>

<!DOCTYPE HTML>
<html lang="pl">
<?php
	require "./components/html-head.php";
	setSiteTitle("Serwis ogłoszeniowy - Strona logowania");
?>
<body>

<?php
	require "./components/header.php";

	require "./components/top-bar.php";
	setTopBarTitle("Strona logowania");
?>

<div class="row">
	<div class="col-1-4">
		<?php
		require "./components/left-menu.php";

		require "./components/left-category-list.php";
		?>
	</div>
	<div class="col-1-3">
		<?php
			require "./components/login-form.php";
		?>
	</div>
</div>

<?php
	require "./components/footer.php";
?>
</body>
</html>