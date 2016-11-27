<?php
include_once "./connect.php";

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

	setTopBarTitle("Witaj ");
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
                include_once "./components/cookie-check.php";
                $connection=getConnection();
                $query="SELECT id_user_session FROM session WHERE token_session='$_COOKIE[id]'";
                $result=mysqli_query($connection,$query);
                $row=mysqli_fetch_assoc($result);

                $id_user=$row['id_user_session'];
                $query="SELECT name_user, surname_user FROM user WHERE id_user='$id_user'";
                $result=mysqli_query($connection,$query);
                $row=mysqli_fetch_assoc($result);
                echo "Witaj ",$row['name_user']," ",$row['surname_user'];
			?>
		</div>
	</div>

<?php
	require "./components/footer.php";

?>
</body>
</html>