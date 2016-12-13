<?php

$connection=getConnection();
$result=$connection->query("SELECT * FROM category ORDER BY name_category ASC");
$childrenTree;
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

function getAllChildren($parent){
    global $childrenTree;
    global $allChildren;

    if(!empty($childrenTree[$parent])){
        foreach ($childrenTree[$parent] as $value){

            if(!in_array($value,$allChildren)){
                $allChildren[]=$value;
            }

            if($childrenTree[$parent]>0){
                getAllChildren($value);
            }
        }
    }
}

function renderTree($parent = "0"){
    global $categoryNames;
    global $allChildren;
    global $childrenTree;

    if($parent != "0"){
        echo '<li><a href="category.php?id=',$parent;

        if(!empty($childrenTree[$parent])){
            if(count($childrenTree[$parent])>0){
                $allChildren=array();
                getAllChildren($parent);
                echo ",",implode(",",$allChildren);
            }
        }

        echo '&page=1">',$categoryNames[$parent], "</a>\n";
    }

    if(!empty($childrenTree[$parent])){
        $children = $childrenTree[$parent];
        if(count($children) > 0){
            echo "<ul>\n";
            foreach($children as $child)
                renderTree($child);
            echo "</ul>\n";
        }
        if($parent != "0") echo "</li>\n";
    }
}

renderTree();

$connection->close();

?>