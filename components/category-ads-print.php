<?php
echo '<div class="bar">Najnowsze ogłoszenia:</div>';

/* Paging init */
global $adsLimit;
global $start;

$adsLimit=5;

$page=intval($_GET['page']);

if($page==1){
    $start=0;
}
else{
    $start=$adsLimit*($page-1);
}
/*  */

$connection=getConnection();

$_GET['id']=mysqli_real_escape_string($connection,$_GET['id']);

$query="";

$childrenCategory=explode(",",$_GET["id"]);
$childrenCategoryCount=count($childrenCategory);

for($i=0;$i<$childrenCategoryCount;$i++){
    $query=$query . "SELECT * FROM ad WHERE category_ad=$childrenCategory[$i] ";

    if($i!=$childrenCategoryCount-1){
        $query=$query."UNION ";
    }
}

$result=mysqli_query($connection,$query);
$row_count=mysqli_num_rows($result);

$numberOfPages=ceil($row_count/$adsLimit);

$query=$query."LIMIT $adsLimit OFFSET $start";
$result=mysqli_query($connection,$query);
$row_count=mysqli_num_rows($result);

/*if(($page<$numberOfPages) || ($page>$numberOfPages)){
    header("location: index.php");
}*/

if($row_count>0){
    while ($row=mysqli_fetch_assoc($result)){
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

for($i=1;$i<=$numberOfPages;$i++){
    echo<<<echo_end
    <a href="category.php?id=$_GET[id]&page=$i">$i</a>

echo_end;

}

$connection->close();
?>