<?php
    $connection=getConnection();
    //$sql="SELECT id_voivodeship, name_voivodeship FROM voivodeship";
$sql="SELECT * FROM listvoivodeships";
    $result=$connection->query($sql);
    $row_count=mysqli_num_rows($result);
?>
    Województwo: <br/>
        <select id="list-voivodeships" onchange="printCounties()">
            <option value="">Wybierz województwo</option>
<?php
    if($row_count>0){
        while($row=$result->fetch_assoc()){
            $id = $row['id_voivodeship'];
            $name = $row["name_voivodeship"];
            echo "<option value=\"$id\">$name</option>";
        }
    }
    else{

        echo "Brak województw do wyświetlenia";
    }
?>

        </select>
    <br/>
<?php
    $connection->close();
?>