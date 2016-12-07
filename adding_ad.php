<?php
    include_once "./components/important_includes.php";
    $connection=getConnection();

    $ad_title=$_POST['ad-title'];
    $ad_price=$_POST['ad-price'];
    $ad_category=$_POST['ad-category'];
    $ad_location=$_POST['ad-location'];
    $ad_content=$_POST['ad-content'];

    $query="SELECT id_user_session FROM session WHERE token_session='$_COOKIE[id]'";
    $result=mysqli_query($connection,$query);
    $row=mysqli_fetch_assoc($result);

    $ad_author=$row['id_user_session'];

    //echo $ad_title," ",$ad_price," ",$ad_category," ",$ad_location," ",$ad_content;

    $query="INSERT INTO ad (id_ad,title_ad,description_ad,view_counter_ad,author_ad,category_ad,
              location_ad,datetime_add_ad,datetime_end_ad,price_ad) 
             VALUES 
              (NULL,'$ad_title','$ad_content',0,$ad_author,$ad_category,$ad_location,SYSDATE(),
              DATE_ADD(SYSDATE(), INTERVAL 14 DAY),$ad_price)";

    if($result=mysqli_query($connection,$query)){
        echo "Dodano ogłoszenie do bazy";
    }
    else{
        echo "Błąd dodawnia ogłosznia do bazy";
    }
?>