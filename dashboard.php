<?php
	session_start();

	if(!(isset($_SESSION['logged_in']))&&($_SESSION['logged_in']==true)) {
		header("Location: index.php");
		exit();
	}

	require_once "connect.php";
?>

<!DOCTYPE HTML>
<html lang="pl">

<?php
	require "./components/html-head.php";
	setSiteTitle("Serwis ogłoszeniowy - Tablica");
?>
<body>
<?php
	require "./components/header.php";

	require "./components/top-bar.php";
	setTopBarTitle("Tablica");
?>
	
	<div class="row">
		<div class="col-1-4">
			<?php
				require "./components/left-menu.php";

				require "./components/left-category-list.php";
			?>
		</div>
		<div class="col-2-3">
			<?php
				require "./components/dashboard-greeting.php";
			?>
		</div>
	</div>

<?php
	require "./components/footer.php";
?>
</body>
</html>