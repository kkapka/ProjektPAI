<?php
	include_once "connect.php";

	header("Cache-Control: no-store, no-cache, must-revalidate");
	header("Cache-Control: post-check=0, pre-check=0, max-age=0", false);
	header("Pragma: no-cache");

	if(isset($_COOKIE['id'])){
		header("location: dashboard.php");
		exit;
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