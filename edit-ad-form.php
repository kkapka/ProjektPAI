<?php
include_once "./components/important_includes.php";
include "./show_errors.php";

if(!isset($_COOKIE['id'])){
    header("location: index.php");
}
?>

<!DOCTYPE HTML>
<html lang="pl">

<?php
require "./components/html-head.php";
include_once "./components/generate_token.php";
setSiteTitle("Serwis ogłoszeniowy - Strona główna");
?>

<body>

<?php
require "./components/header.php";

require "./components/top-bar.php";
setTopBarTitle("Edytuj artykuł");
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
            include_once "./edit-ad.php";
        ?>
    </div>
</div>

<?php
    include_once "./components/footer.php";
?>
</body>
</html>