
<?php
$x=5; $y=10;

function Test() { global $x,$y; $y=$x+$y; }
Test();
echo $y;
?>


echo sum(2,3);
?>
