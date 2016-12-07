<?php
	include_once "./components/important_includes.php";
?>

<!DOCTYPE HTML>
<html lang="pl">

<?php
	include_once "./components/html-head.php";
	setSiteTitle("Serwis ogłoszeniowy - Strona główna");
?>

<body>
	<?php
		include_once "./components/header.php";

		include_once "./components/top-bar.php";
		setTopBarTitle("Strona domowa");
	?>

	<div class="row">
		<div class="col-1-4">
			<?php
			include_once "./components/left-menu.php";

			include_once "./components/left-category-list.php";
			?>
		</div>

		<div class="col-2-3">
			<?php
				include_once "./components/latest-ads.php";
			?>
		</div>
	</div>
	<?php
		include_once "./components/footer.php";
	?>

</body>
</html>