<?php
echo '<div class="bar">Witaj!</div>';
echo Witaj,' ',$_SESSION['user'];
echo<<<echo_end
<ul>
    <li>Kraków</li>
    <li>Warszawa</li>
    <li>Gdańsk</li>
</ul>
echo_end;

?>