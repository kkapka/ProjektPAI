<?php
    echo<<<echo_end
<form action="registering_in.php" method="post">
    Login: <br/> <input type="text" name="login"/><br/>
    Hasło: <br/> <input type="password" name="password"/><br/>
    Powtórz hasło: <br/> <input type="password" name="password"/>
    Email: <br/><input type="email" name="mail"/>
    Imię: <br/> <input type="text" name="name"/><br/>
    Nazwisko: <br/> <input type="text" name="surname"/><br/>
    Ulica: <br/> <input type="text" name="street"/><br/>
    Nr domu: <br/> <input type="text" name="street_nr"/><br/>
echo_end;


?>
    <?php
    $connection=getConnection();

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

    echo<<<echo_end
    Numer telefonu: <br/><input type="number" name="phone_number"/>
    <br/><br/>
    <input type="checkbox" name="remember_login_details">Akceptuję regulamin</input><br/>
    <input type="submit" value="Zarejestruj się"/><br/>

echo_end;

    if(isset($_SESSION['login_error'])){
        echo "<br/>";
        echo $_SESSION['login_error'];
    }

echo '</form>';
?>