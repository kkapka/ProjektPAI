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
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="flexbox-style.css">
   	<title>Strona rejestracji - Serwis ogłoszeniowy</title>
</head>
<body>
	<div class="row">
		<div class="col-1">
			<div class="header">Serwis ogłoszeniowy</div>
		</div>
	</div>

	<div class="row">
		<div class="col-1">
			<div class="bar">Strona rejestracji</div>
		</div>
	</div>

<div class="row">
	<div class="col-1-4">
		<div class="bar">Menu</div>
		<ul class="left-menu-ul">
			<li class="left-menu-li">
				<a href="index.php">Domowa</a>
			</li>
			<li class="left-menu-li">
				<a href="login.php">Zaloguj się</a>
			</li>
			<li class="left-menu-li">
				<a href="register.php">Zarejestruj się</a>
			</li>
		</ul>
	</div>
	<div class="col-1-3">
				<form action="registering_in.php" method="post">
					Login: <br/> <input type="text" name="login"/><br/>
					Hasło: <br/> <input type="password" name="password"/><br/>
					Powtórz hasło: <br/> <input type="password" name="password"/>
					Email: <br/><input type="email" name="mail"/>
					Imię: <br/> <input type="text" name="name"/><br/>
					Nazwisko: <br/> <input type="text" name="surname"/><br/>
					Ulica: <br/> <input type="text" name="street"/><br/>
					Nr domu: <br/> <input type="text" name="street_nr"/><br/>

					<?php
						$connection=@new mysqli($db_host,$db_user,$db_password,$db_name);

						if($connection->connect_errno!=0) {
							echo "Error: ".$connection->connection_errno();
                            exit();
						}

						if (!$connection->set_charset("utf8")) {
							echo "Error loading character set utf8".$connection->error;
							exit();
						}

						// voivodeships list

                        echo "Województwo: <br/>";

                        echo '<select name="voivodeships">';

                        $sql = "SELECT * FROM voivodeship ORDER BY name_voivodeship";
                        $result = $connection->query($sql);
                        $row_count=mysqli_num_rows($result);

                        if ($row_count > 0) {
                            while ($row = $result->fetch_assoc()) {
                                echo '<option value="'.$row["id_voivodeship"].'">'.$row["name_voivodeship"].'</option>';
                            }
                        } else {
                            echo '<option value="0">Brak województw</option>';
                        }

                        echo '</select>';
						echo '<br/>';

						// countys list

						echo "Powiat: <br/>";

						echo '<select name="countys">';

						$sql = "SELECT * FROM county ORDER BY name_county";
						$result = $connection->query($sql);
						$row_count=mysqli_num_rows($result);

						if ($row_count > 0) {
							while ($row = $result->fetch_assoc()) {
								echo '<option value="'.$row["id_county"].'">'.$row["name_county"].'</option>';
							}
						} else {
							echo '<option value="0">Brak powiatów</option>';
						}

						echo '</select>';
						echo '<br/>';

						// locations list

						echo "Miasto: <br/>";

						echo '<select name="locations">';

						$sql = "SELECT * FROM location ORDER BY name_location";
						$result = $connection->query($sql);
						$row_count=mysqli_num_rows($result);

						if ($row_count > 0) {
							while ($row = $result->fetch_assoc()) {
								echo '<option value="'.$row["id_location"].'">'.$row["name_location"].'</option>';
							}
						} else {
							echo '<option value="0">Brak miast</option>';
						}

						echo '</select>';
						echo '<br/>';

						//gender list
						echo "Płeć: <br/>";
						echo '<select name="genders">';

						$sql = "SELECT * FROM gender ORDER BY name_gender";
						$result = $connection->query($sql);
						$row_count=mysqli_num_rows($result);

						if ($row_count > 0) {
							while ($row = $result->fetch_assoc()) {
								echo '<option value="'.$row["id_gender"].'">'.$row["name_gender"].'</option>';
							}
						} else {
							echo '<option value="0">Brak województw</option>';
						}

						echo '</select>';
						echo '<br/>';


                        $connection->close();

					?>
					Numer telefonu: <br/><input type="number" name="phone_number"/>
					<br/><br/>
					<input type="checkbox" name="remember_login_details">Akceptuję regulamin</input><br/>
					<input type="submit" value="Zarejestruj się"/><br/>
					<?php
						if(isset($_SESSION['login_error'])){
							echo "<br/>";
							echo $_SESSION['login_error'];
						}
					?>
 				</form>
	</div>
	</div>

	<div class="row">
		<div class="col-1">
			<div class="footer-bar">Napisane przez: Kamil Kapka</div>
		</div>
	</div>
</body>
</html>