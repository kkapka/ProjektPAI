<?php
$connection=getConnection();
$result=$connection->query("SELECT * FROM category ORDER BY name_category ASC");

$childrenTree = array();
$categoryNames = array();
$allChildren=array();

while($row = mysqli_fetch_array($result)){
    list($id, $parent_id, $category) = $row;
    $categoryNames[(string)$id] = $category;

    if(!array_key_exists($parent_id, $childrenTree))
        $childrenTree[$parent_id] = array();
    $childrenTree[$parent_id][] = (string)$id;
}

function renderListTree($parent = "0"){
    global $categoryNames;
    global $childrenTree;
    global $allChildren;

    if($parent != "0"){
        echo '<option value="',$parent,'">',$categoryNames[$parent], '</option>';
    }

    $children = $childrenTree[$parent];

    if(count($children) > 0){
        foreach($children as $child)
            renderListTree($child);
    }
}
echo "Kategoria: </br>";
echo '<select name="category-list" id="5">';
echo '<option value="">Wybierz kategorię</option>';
renderListTree();
echo '</select>';

$connection->close();

?>