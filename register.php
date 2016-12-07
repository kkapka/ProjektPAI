<?php
	include_once "./components/important_includes.php";

	if(isset($_COOKIE['id'])){
		header("location: dashboard.php");
		exit;
	}
?>

<!DOCTYPE HTML>
<html lang="pl">

<?php
	include_once "./components/html-head.php";
?>

<body>

<?php
	include_once "./components/header.php";
	setSiteTitle("Serwis ogłoszeniowy - Strona rejestracji");

	include_once "./components/top-bar.php";
	setTopBarTitle("Strona rejestracji");
?>

<div class="row">
	<div class="col-1-4">
		<?php
			include_once "./components/left-menu.php";
		?>
	</div>
	<div class="col-1-3">
		<?php
			include_once "./components/register-form.php";
		?>
	</div>
	</div>

<?php
	include_once "./components/footer.php";
?>

</body>
</html>