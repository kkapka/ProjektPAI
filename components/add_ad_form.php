<form action="upload_photos.php" method="post" enctype="multipart/form-data">
    Wybierz zdjęcia(max. 5, rozmiar do 500kB): </br></br>
    <input type="file" name="fileToUpload[]">
    <input type="file" name="fileToUpload[]">
    <input type="file" name="fileToUpload[]">
    <input type="file" name="fileToUpload[]">
    <input type="file" name="fileToUpload[]">
    </br>
    <input type="submit" value="Wyślij zdjęcia" name="submit">
</form>

</br>

<form action="adding_ad.php" method="post">
    Tytuł ogłoszenia: <br/> <input type="text" name="ad-title"/><br/>
    Cena: <br/> <input type="text" name="ad-price"/><br/>

    <?php
        include_once "list-voivodeships.php";
    ?>

    <div id="counties"></div>
    <div id="locations"></div>

    <?php
        include_once "./components/category-list.php";
    ?>
    Treść ogłoszenia: <br/> <textarea name="ad-content"></textarea><br/>
    <input type="submit" value="Dodaj artykuł"/><br/>
</form>
