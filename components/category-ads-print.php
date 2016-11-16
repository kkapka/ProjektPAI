<?php
echo '<div class="bar">Najnowsze ogłoszenia:</div>';

$connection=getConnection();
$id_category=$_GET["id"];
$sql="SELECT * FROM ad WHERE category_ad=$id_category";
$result=$connection->query($sql);
$row_count=mysqli_num_rows($result);

if($row_count>0){
    while($row=$result->fetch_assoc()){
        echo '<a class="href-latest-ad" href="ad.php?id='.$row["id_ad"].'">';
        echo '<table class="table-latest-ads">';
        echo '<tr><td class="top-row-latest-ad" colspan="2">'.$row["title_ad"].'</td>';
        echo '<tr><td class="left-column-latest-ads">Cena</td><td class="right-column-latest-ads">'.$row["price_ad"].'zł</td></tr>';
        echo '<tr><td class="left-column-latest-ads">Lokalizacja</td><td class="right-column-latest-ads">'.$row["name_location"].','.$row["name_voivodeship"].'</td></tr>';
        echo '<tr><td class="left-column-latest-ads">Kategoria</td><td class="right-column-latest-ads">'.$row["name_category"].'</td></tr>';
        echo '<tr><td class="left-column-latest-ads">Data dodania</td><td class="right-column-latest-ads">'.$row["datetime_add_ad"].'</td></tr>';
        echo '</table>';
        echo '</a>';
        echo '</br>';
    }
}
else{
    echo "Brak ogłoszeń dla danej kategorii!";
}

$connection->close();

?>