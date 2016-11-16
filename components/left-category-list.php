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

$connection->close();

?>