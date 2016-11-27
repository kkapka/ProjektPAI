<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include_once "connect.php";

$conncection=getConnection();
$sql="SELECT * FROM zad3";
$sql2="INSERT INTO zad3 (lp,nazwisko,imie,login,haslo) VALUES ({$_GET['lp']},{$_GET['nazwisko']},{$_GET['imie']},{$_GET['login']},{$_GET['haslo']})";
mysqli_query($conncection,$sql2);
$result=mysqli_query($conncection,$sql);
$row_count=mysqli_num_rows($result);

echo "<table>";
while($row=mysqli_fetch_assoc($result)){
    echo "<tr><td>",$row['lp'],"</td><td>",$row['imie'],"</td><td>",$row['nazwisko'],"</td><td>",$row['login'],"</td><td>",$row['haslo'],"</td></tr>";
}
echo "</table>";

?>

<!DOCTYPE HTML>
<html>
<body>
</body>
<form action="zad3.php" method="get">
    LP<input type="text" name="lp">
    Nazwisko<input type="text" name="nazwisko">
    Imie<input type="text" name="imie">
    Login<input type="text" name="login">
    Haslo<input type="text" name="haslo">
    <input type="submit">
</form>
</html>