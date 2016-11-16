<?php

        echo '<div class="bar">Najnowsze ogłoszenia:</div>';
        $connection=getConnection();
        $id_ad=$_GET["id"];

        $sql="SELECT * FROM detailed_ad WHERE id_ad=$id_ad";
        $result=$connection->query($sql);
        $row_count=mysqli_num_rows($result);

        if($row_count>0){
            while($row=$result->fetch_assoc()){
                echo '<table class="detailed-ad-table">';
                echo '<tr><td class="detailed-ad-title" colspan="2">'.$row["title_ad"].'</td>';
                echo '<tr><td class="detailed-ad-price-left">Cena</td><td class="detailed-ad-price-right">'.$row["price_ad"].'zł</td></tr>';
                echo '<tr><td class="detailed-ad-location-left">Lokalizacja</td><td class="detailed-ad-location-right">'.$row["name_location"].','.$row["name_voivodeship"].'</td></tr>';
                echo '<tr><td class="left-column-latest-ads">Kategoria</td><td class="right-column-latest-ads">'.$row["name_category"].'</td></tr>';
                echo '<tr><td class="left-column-latest-ads">Data dodania</td><td class="right-column-latest-ads">'.$row["datetime_add_ad"].'</td></tr>';
                echo '</table>';
            }
        }
        else{
            echo "Brak ogłoszenia o takim numerze";
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