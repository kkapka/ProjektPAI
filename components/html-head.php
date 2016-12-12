<?php
function setSiteTitle($name){
    echo<<<echo_end
    
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="flexbox-style.css">
    <script src="functions.js"></script>
    <script src="../jquery-3.1.1.min.js"></script>
    <title>$name</title>
    <link href="../lightbox2-master/dist/css/lightbox.css" rel="stylesheet">
</head>

echo_end;

}
?>

