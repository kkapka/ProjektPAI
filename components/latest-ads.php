<?php

echo '<div class="bar">Najnowsze ogłoszenia:</div>';

$connection=getConnection();

$sql="SELECT * FROM five_newest_ads";
$result=mysqli_query($connection,$sql);
$row_count=mysqli_num_rows($result);
if($row_count>0){
    while($row=mysqli_fetch_assoc($result)){
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
    echo "Nie znaleziono żadnych ogłoszeń";
}
$connection->close();

?>