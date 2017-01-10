<?php
	include_once "./components/important_includes.php";

if(isset($_COOKIE['id'])){
    $connection=getConnection();
    $_COOKIE['id']=mysqli_real_escape_string($connection,htmlentities($_COOKIE['id']));

    $query="SELECT permission_user_type FROM (user JOIN user_type on type_user=id_user_type) JOIN session ON id_user_session=id_user WHERE token_session='$_COOKIE[id]'";
    $result=mysqli_query($connection,$query);
    $row_count=mysqli_num_rows($result);
    if($row_count>0){
        $row=mysqli_fetch_assoc($result);
        if($row['permission_user_type']<100){
            header("location: index.php");
            exit;
        }
    }
    else{
        header("location: login.php");
        exit;
    }
}
else{
    header("location: index.php");
    exit;
}
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

	setTopBarTitle("Panel użytkownika");
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
				include_once "./components/dashboard-greeting.php";
                include_once "./components/cookie-check.php";
                include_once "./components/dashboard-content.php";
			?>
		</div>
	</div>

<?php
	require "./components/footer.php";

?>
</body>
</html>