<?php
        echo '<div class="bar">Najnowsze ogłoszenia:</div>';
        $connection=getConnection();
        $id_ad=intval($_GET["id"]);

        $sql="SELECT * FROM detailed_ad WHERE id_ad=$id_ad";
        $result=$connection->query($sql);
        $row_count=mysqli_num_rows($result);

        echo '<script src="../lightbox2-master/dist/js/lightbox.js"></script>';

        if($row_count>0){

            $connection=getConnection();
            $query="UPDATE ad SET view_counter_ad=view_counter_ad+1 WHERE id_ad=$id_ad";
            mysqli_query($connection,$query);

            global $i;
            $i=1;
            while($row=$result->fetch_assoc()){
                echo '<table class="detailed-ad-table">';
                echo '<tr><td class="detailed-ad-title" colspan="2">'.htmlentities($row["title_ad"]).'</td>';
                echo '<tr><td class="detailed-ad-price-left">Cena</td><td class="detailed-ad-price-right">'.$row["price_ad"].'zł</td></tr>';
                echo '<tr><td class="detailed-ad-location-left">Lokalizacja</td><td class="detailed-ad-location-right">'.$row["name_location"].','.$row["name_voivodeship"].'</td></tr>';
                echo '<tr><td class="left-column-latest-ads">Kategoria</td><td class="right-column-latest-ads">'.$row["name_category"].'</td></tr>';
                echo '<tr><td class="left-column-latest-ads">Data dodania</td><td class="right-column-latest-ads">'.$row["datetime_add_ad"].'</td></tr>';
                echo '<tr><td class="left-column-latest-ads">Autor</td><td class="right-column-latest-ads">'.$row["name_user"],' ',$row["surname_user"][0],'</td></tr>';
                echo '<tr><td class="left-column-latest-ads">Numer telefonu</td><td class="right-column-latest-ads">'.$row["telephone_number_user"].'</td></tr>';
                //echo '<tr><td class="detailed-ad-title" colspan="2">'.htmlentities(nl2br(stripslashes($row["description_ad"]))).'</td>';
                echo '<tr><td class="detailed-ad-title" colspan="2" style="text-align: left;">'.str_replace('\r\n','</br>',htmlentities($row["description_ad"])).'</td>';
                echo '<tr><td class="left-column-latest-ads">Liczba wyświetleń</td><td class="right-column-latest-ads">'.$row["view_counter_ad"].'</td></tr>';
                echo '</table>';

                $connection=getConnection();
                $query="SELECT location_photo FROM photo INNER JOIN gallery ON id_photo=id_photo_gallery WHERE id_ad_gallery=$id_ad";
                $result=mysqli_query($connection,$query);

                echo '<div class="img-container">';
                while($row=mysqli_fetch_assoc($result)){
                    //echo '<img src="'.'./uploads/'.$row['location_photo'].'"></br>';
                    echo '<a href="'.'./uploads/'.$row['location_photo']. '" data-lightbox="user-gallery">'.
                            '<img src="'.'./uploads/'.$row['location_photo'].'" width="180" height="180" alt="Image Title">'
                        .'</a>';
                    echo " ";
                    $i++;
                }
                echo '</div>';

                mysqli_close($connection);

            }
        }
        else{
            echo "Brak ogłoszenia o takim numerze";
        }
?>