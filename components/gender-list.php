<?php
    echo "Płeć: <br/>";
    echo '<select name="genders">';
    echo '<option value="">Wybierz płeć</option>';

    $connection=getConnection();
    $sql = "SELECT * FROM gender ORDER BY name_gender";
    $result = $connection->query($sql);
    $row_count=mysqli_num_rows($result);

    if ($row_count > 0) {
        while ($row = $result->fetch_assoc()) {
            echo '<option value="'.$row["id_gender"].'">'.$row["name_gender"].'</option>';
        }
    } else {
        echo '<option value="0">Brak płci</option>';
    }

    echo '</select>';
    echo '<br/>';
$connection->close();
?>