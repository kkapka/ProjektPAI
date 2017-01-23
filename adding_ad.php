<?php
    session_start();

    include_once "./components/important_includes.php";
    $connection=getConnection();
    if(empty($_POST['ad-price']) || empty($_POST['ad-title']) || empty($_POST['category-list']) || empty($_POST['list-locations']) ||  empty($_POST['ad-content'])){
        echo "Conajmniej jedno pole jest puste !";
        exit;
    }

    $ad_title=$_POST['ad-title'];
    //$ad_title=htmlspecialchars($ad_title, ENT_QUOTES, 'UTF-8');
    $ad_title=mysqli_real_escape_string($connection,$ad_title);
    $ad_title_pattern="/^.{1,255}$/u";

    if(!preg_match($ad_title_pattern,$ad_title)){
        echo "Wprowadziłeś tytuł ogłoszenia w błędnym formacie!";
        exit;
    }

    $ad_title=addslashes($ad_title);

    $ad_price=$_POST['ad-price'];
    $ad_price_pattern="/^[0-9]{1,10}$/";

    if(!preg_match($ad_price_pattern,$ad_price)){
        echo "Wprowadziłeś nieprawidłową cenę!";
        exit;
    }

    $ad_category=$_POST['category-list'];
    $ad_category_pattern="/^[0-9]{1,10}$/";


    $ad_location_pattern="/^[0-9]{1,10}$/";
    $ad_location=$_POST['list-locations'];

    if(!preg_match($ad_location_pattern,$ad_location)){
        echo "Wybrałeś nieprawidłową lokalizację!";
        exit;
    }

    $query="SELECT id_location FROM location WHERE id_location=$ad_location";
    $result=mysqli_query($connection,$query);
    $row_count=mysqli_num_rows($result);

    if($row_count<1){
        echo "Wybrana lokalizacja nie istnieje !";
        exit;
    }

    $ad_content=$_POST['ad-content'];
    //$ad_content=htmlspecialchars($ad_content, ENT_QUOTES, 'UTF-8');
    $ad_content=mysqli_real_escape_string($connection,$ad_content);
    //$ad_content=htmlentities($ad_content);
    $ad_content_pattern="/.{1,255}/u";

    if(!preg_match($ad_content_pattern,$ad_content)){
        echo "Wprowadziłeś treść ogłoszenia w błędnym formacie!";
        exit;
    }

    $ad_content=addslashes($ad_content);

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
        $last_inserted_id=mysqli_insert_id($connection);
        $_SESSION['ad_id']=$last_inserted_id;

        echo "Dodano ogłoszenie do bazy";
    }
    else{
        echo "Błąd dodawnia ogłosznia do bazy";
    }
?>