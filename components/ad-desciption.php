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
                echo '<tr><td class="left-column-latest-ads">Autor</td><td class="right-column-latest-ads">'.$row["name_user"],' ',$row["surname_user"][0],'</td></tr>';
                echo '<tr><td class="left-column-latest-ads">Numer telefonu</td><td class="right-column-latest-ads">'.$row["telephone_number_user"].'</td></tr>';
                echo '<tr><td class="detailed-ad-title" colspan="2">'.$row["description_ad"].'</td>';
                echo '<tr><td class="left-column-latest-ads">Liczba wyświetleń</td><td class="right-column-latest-ads">'.$row["view_counter_ad"].'</td></tr>';
                echo '</table>';

                $connection=getConnection();
                $query="SELECT location_photo FROM photo INNER JOIN gallery ON id_photo=id_photo_gallery WHERE id_ad_gallery=$id_ad";
                $result=mysqli_query($connection,$query);

                while($row=mysqli_fetch_assoc($result)){
                    echo '<img src="'.'./uploads/'.$row['location_photo'].'"></br>';
                }

                mysqli_close($connection);

            }
        }
        else{
            echo "Brak ogłoszenia o takim numerze";
        }

        $connection->close();
?>