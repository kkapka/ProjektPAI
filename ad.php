<?php
	session_start();

	require_once "connect.php";



?>

<!DOCTYPE HTML>
<html lang="pl">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="flexbox-style.css">
    <title>Serwis ogłoszeniowy</title>
</head>
<body>
<div class="row">
    <div class="col-1">
        <div class="header">Serwis ogłoszeniowy</div>
    </div>
</div>

<div class="row">
    <div class="col-1">
        <div class="bar">Strona domowa</div>
    </div>
</div>

<div class="row">
    <div class="col-1-4">
        <div class="bar">Menu</div>
        <ul class="left-menu-ul">
            <li class="left-menu-li">
                <a href="login.php">Zaloguj się</a>
            </li>
            <li class="left-menu-li">
                <a href="register.php">Zarejestruj się</a>
            </li>
        </ul>
        <?php
        $connection=getConnection();
        $result=$connection->query("SELECT * FROM category ORDER BY name_category ASC");
        $childrenTree = array();
        $categoryNames = array();

        while($row = mysqli_fetch_array($result)){
            list($id, $parent_id, $category) = $row;
            $categoryNames[(string)$id] = $category;
            $parent_id = (string)$parent_id;

            if(!array_key_exists($parent_id, $childrenTree))
                $childrenTree[$parent_id] = array();
            $childrenTree[$parent_id][] = (string)$id;
        }

        function renderTree($parent = "0"){
            global $categoryNames;
            global $childrenTree;

            if($parent != "0"){
                echo '<li><a href="category.php?id=',$parent,'">',$categoryNames[$parent], "</a>\n";
            }

            $children = $childrenTree[$parent];
            if(count($children) > 0){
                echo "<ul>\n";
                foreach($children as $child)
                    renderTree($child);
                echo "</ul>\n";
            }
            if($parent != "0") echo "</li>\n";
        }
        renderTree();
        ?>
    </div>

    <div class="col-2-3">
        <div class="bar">Najnowsze ogłoszenia:</div>
        <?php
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
    </div>
</div>

<div class="row">
    <div class="col-1">
        <div class="footer-bar">Napisane przez: Kamil Kapka</div>
    </div>
</div>
</body>
</html>