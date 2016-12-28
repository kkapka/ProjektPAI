    Miasto: <br/>

    <select id="list-locations" name="list-locations">
<?php
    require_once "../connect.php";

    $connection=getConnection();
    $id_county=$_GET["county_id"];
    $sql = "SELECT id_location, name_location FROM location INNER JOIN county ON id_county_location=id_county WHERE id_county_location=$id_county ORDER BY name_location";
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

?>