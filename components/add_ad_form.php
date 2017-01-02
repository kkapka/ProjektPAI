<form name="upload-photos" id="upload-photos" method="post" enctype="multipart/form-data">
    Wybierz zdjęcia(max. 5, rozmiar do 500kB): </br></br>
    <input type="file" name="fileToUpload[]" >
    <input type="file" name="fileToUpload[]" >
    <input type="file" name="fileToUpload[]" >
    <input type="file" name="fileToUpload[]" >
    <input type="file" name="fileToUpload[]" >
</form>

</br>

<form id="ad-details-form" action="adding_ad.php" method="post">
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
    <input id="submit-button" type="submit" value="Dodaj artykuł"/><br/>
</form>

<script>
    $("form#ad-details-form").submit(function (event) {
        event.preventDefault();
        $.ajax({
            type: "POST",
            url: 'adding_ad.php',
            data: $("#ad-details-form").serialize(),

            success: function(data)
            {
                if(data=="Dodano ogłoszenie do bazy"){
                    var ajaxData = new FormData();

                    var k=0;
                    $.each($("input[type=file]"), function(i, obj) {

                        $.each(obj.files,function(j, file){
                            ajaxData.append('fileToUpload['+k+']', file);

                            if(file.name!=""){
                                k=k+1;
                            }
                        })
                    });

                    $.ajax({
                        url: 'upload_photos.php',
                        data: ajaxData,
                        cache: false,
                        contentType: false,
                        processData: false,
                        type: 'POST',
                        success: function(data){
                            alert(data);
                        }
                    });

                }
                alert(data);
            }
        });
    })
</script>
