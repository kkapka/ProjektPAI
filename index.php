<?php
	session_start();

	require_once "connect.php";



?>

<!DOCTYPE HTML>
<html lang="pl">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="flexbox-style.css">
    <title>Serwis ogłoszeniowy</title>
</head>
<body>
	<div class="row">
		<div class="col-1">
			<div class="header">Serwis ogłoszeniowy</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-1">
			<div class="bar">Strona domowa</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-1-4">
			<div class="bar">Menu</div>
			<ul class="left-menu-ul">
				<li class="left-menu-li">
					<a href="login.php">Zaloguj się</a>
				</li>
				<li class="left-menu-li">
					<a href="register.php">Zarejestruj się</a>
				</li>
			</ul>

		</div>
		<div class="col-2-3">
			<div class="bar">Najnowsze ogłoszenia:</div>
			<?php
			$connection=getConnection();

			$sql="SELECT * FROM five_newest_ads";
			$result=$connection->query($sql);
			$row_count=mysqli_num_rows($result);

			if($row_count>0){
				while($row=$result->fetch_assoc()){
					echo $row["title_ad"]." Cena: ".$row["price_ad"]." zł<br/>";
					echo $row["name_location"].",".$row["name_voivodeship"]."<br/>";
					echo "Kategoria: ".$row["name_category"]." Data dodania: ".$row["datetime_add_ad"]."<br/><br/>";
				}
			}
			else{
				echo "Błąd!!!!";
			}

			function buildCategoryTree($parentId){
				$connection=getConnection();
				$sql="SELECT * FROM category WHERE parent_category='$parentId'";
				$result=$connection->query($sql);

				$connection->close();

			}
			//printCategoryTree(0);

			$connection->close();
			?>
		</div>
	</div>
	
	<div class="row">
		<div class="col-1">
			<div class="footer-bar">Napisane przez: Kamil Kapka</div>
		</div>
	</div>
</body>
</html>