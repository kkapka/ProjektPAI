<?php
include_once "./components/important_includes.php";

if(!isset($_COOKIE['id'])){
    header("location: index.php");
}
?>

<!DOCTYPE HTML>
<html lang="pl">

<?php
include_once "./components/html-head.php";
setSiteTitle("Serwis ogłoszeniowy - Tablica");
?>

<body>

<?php
require "./components/header.php";

require "./components/top-bar.php";

setTopBarTitle("Panel użytkownika");
?>

<div class="row">
    <div class="col-1-4">
        <?php
        require "./components/left-menu.php";

        require "./components/left-category-list.php";
        ?>
    </div>
    <div class="col-2-3">
        <?php
        include_once "./components/change-details-form.php"
        ?>
    </div>
</div>

<?php
require "./components/footer.php";

?>
</body>
</html>