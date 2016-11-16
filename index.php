<?php
	session_start();
	require_once "connect.php";
?>

<!DOCTYPE HTML>
<html lang="pl">
<?php
	require "./components/html-head.php";
	setSiteTitle("Serwis ogłoszeniowy - Strona główna");
?>
<body>
	<?php
		require "./components/header.php";

		require "./components/top-bar.php";
		setTopBarTitle("Strona domowa");
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
				require "./components/latest-ads.php";
			?>
		</div>
	</div>
	<?php
		require "./components/footer.php";
	?>
</body>
</html>