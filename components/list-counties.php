<?php

    require_once "../connect.php";

    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);

    $voivodeship_id=intval($_GET["voivodeship_id"]);
    $connection=getConnection();
    $sql="SELECT DISTINCT id_county,name_county FROM location INNER JOIN county ON id_county_location=id_county WHERE id_voivodeship_location=$voivodeship_id ORDER BY name_county ASC";
    $result=$connection->query($sql);
    $row_count=mysqli_num_rows($result);
?>
    Powiat: <br/>
    <select id="list-counties" onchange="printLocations()">
    <option value="">Wybierz powiat</option>

<?php
    if($row_count>0){
        while($row=$result->fetch_assoc()){
            echo '<option value="'.$row["id_county"].'">'.$row["name_county"].'</option>';
        }
    }
    else{

        echo "Brak województw do wyświetlenia";
    }

    echo '</select>';
    echo '<br/>';

    $connection->close();
?>