<?php
session_start();

if(isset($_COOKIE['id']) && isset($_COOKIE['token'])){
    $connection=getConnection();
    $_COOKIE['id']=mysqli_real_escape_string($connection,htmlentities($_COOKIE['id']));
    $_COOKIE['token']=mysqli_real_escape_string($connection,htmlentities($_COOKIE['token']));

    $query="SELECT permission_user_type FROM (user JOIN user_type on type_user=id_user_type) JOIN session ON id_user_session=id_user WHERE token_session='$_COOKIE[id]' AND second_token_session='$_COOKIE[token]'";
    $result=mysqli_query($connection,$query);
    $row_count=mysqli_num_rows($result);
    if($row_count>0){
        $row=mysqli_fetch_assoc($result);
        if($row['permission_user_type']<100){
            header("location: dashboard.php");
            exit;
        }
    }
    else{
        header("location: login.php");
        exit;
    }
}
else{
    header("location: index.php");
    exit;
}

include_once "./components/important_includes.php";
//include_once "./show_errors.php";

if(isset($_COOKIE['id']) && isset($_COOKIE['token'])){
    $connection=getConnection();
    $_COOKIE['id']=mysqli_real_escape_string($connection,htmlentities($_COOKIE['id']));
    $_COOKIE['token']=mysqli_real_escape_string($connection,htmlentities($_COOKIE['token']));

    $query="SELECT id_user_session FROM session WHERE token_session='$_COOKIE[id]' AND second_token_session='$_COOKIE[token]'";
    $result=mysqli_query($connection,$query);
    $num_rows=mysqli_num_rows($result);
    if($num_rows>0){
        $id_ad=intval($_GET['ad_id']);
        $author_ad=intval($_GET['author_ad']);

        $row=mysqli_fetch_assoc($result);
        $id_user=$row['id_user_session'];

        $_SESSION['id_ad']=$id_ad;
        $_SESSION['ad_id']=$id_ad;

        $query="SELECT permission_user_type FROM user JOIN user_type ON type_user=id_user_type
                          WHERE id_user=$id_user";
        $result=mysqli_query($connection,$query);
        $num_rows=mysqli_num_rows($result);

        if($num_rows>0){

            $row=mysqli_fetch_assoc($result);
            if(($author_ad==$id_user) || ($row['permission_user_type'])>=110){

                $query="SELECT * FROM ad WHERE id_ad=$id_ad AND author_ad=$author_ad";

                $result=mysqli_query($connection,$query);
                $num_rows=mysqli_num_rows($result);

                if($num_rows>0){
                    $row = mysqli_fetch_assoc($result);
                    $title_ad=$row['title_ad'];
                    $price_ad=$row['price_ad'];
                    $content_ad=$row['description_ad'];
                    $location_ad=$row['location_ad'];

                    $query="SELECT * FROM location WHERE id_location=$location_ad";
                    $result=mysqli_query($connection,$query);
                    $loc_row=mysqli_fetch_assoc($result);
                    $county_ad=$loc_row['id_county_location'];
                    $voivodeship_ad=$loc_row['id_voivodeship_location'];

                    $category_ad=$row['category_ad'];
                    ?>
                    <form name="edit-upload-photos" id="edit-upload-photos" method="post" enctype="multipart/form-data">
                        Wybierz zdjęcia(max. 5, rozmiar do 500kB): </br></br>
                        <input type="file" name="fileToUpload[]" >
                        <input type="file" name="fileToUpload[]" >
                        <input type="file" name="fileToUpload[]" >
                        <input type="file" name="fileToUpload[]" >
                        <input type="file" name="fileToUpload[]" >
                    </form>

                    </br>

                    <form id="edit-ad-details-form">
                        Tytuł ogłoszenia: <br/> <input type="text" name="ad-title" id="1"/><br/>
                        Cena: <br/> <input type="text" name="ad-price" id="2"/><br/>

                        <?php
                        include_once "./components/list-voivodeships.php";
                        ?>

                        <div id="counties"></div>
                        <div id="locations"></div>

                        <?php
                        include_once "./components/category-list.php";
                        ?>
                        Treść ogłoszenia: <br/> <textarea name="ad-content" id="3"></textarea><br/>
                        <input id="submit-button" type="submit" value="Edytuj artykuł"/><br/>
                    </form>
                    <?php
                    function deleteOldFiles(){
                        $connection=getConnection();
                        $ad_id=$_GET['ad_id'];
                        $query="SELECT location_photo FROM photo JOIN gallery ON id_photo_gallery=id_photo WHERE id_ad_gallery=$ad_id";
                        if($result=mysqli_query($connection,$query)){
                            if($row=mysqli_fetch_assoc($result)){
                                $folder_name=explode('/',$row['location_photo']);

                                $query="DELETE FROM gallery WHERE id_ad_gallery=$ad_id";
                                if($result=mysqli_query($connection,$query)){
                                    //print_r(glob('.././uploads/'.$folder_name[0].'/*'));
                                    array_map('unlink',glob('./uploads/'.$folder_name[0].'/*'));
                                    rmdir('./uploads/'.$folder_name[0].'/');
                                    //echo "13";
                                    return true;
                                }
                                //echo "12";

                            }
                        }
                        //echo "11";
                        return false;
                    }
                    ?>
                    <script>
                        $(document).ready(function () {
                            document.getElementById("1").value = '<?php echo $title_ad;?>';
                            document.getElementById("2").value = '<?php echo $price_ad;?>';
                            document.getElementById("3").value = '<?php echo $content_ad;?>';
                            document.getElementById("5").value = '<?php echo $category_ad;?>';

                            $("#list-voivodeships").val('<?php echo $voivodeship_ad;?>').change();
                            $("#list-counties").val('<?php echo $county_ad;?>').change();
                            $("#list-locations").val('<?php echo $location_ad;?>').change();

                            $("form#edit-ad-details-form").submit(function (event) {
                                $.ajax({
                                    type: "POST",
                                    url: 'editting-ad.php',
                                    data: $("#edit-ad-details-form").serialize(),

                                    success: function(data)
                                    {
                                        alert(data);
                                        if(data=="Edycja ogłoszenia przebiegła pomyślnie"){
                                            var x='<?php deleteOldFiles();?>';

                                            var ajaxData = new FormData();
                                            ajaxData.append( 'action','edit-upload-photos');


                                            var k=0;
                                            $.each($("input[type=file]"), function(i, obj) {

                                                $.each(obj.files,function(j, file){
                                                    ajaxData.append('fileToUpload['+k+']', file);

                                                    if(file.name!=""){
                                                        k=k+1;
                                                    }
                                                })
                                            });

                                            if(k>0){
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

                                            window.location.href ='./ad.php?id='+'<?php echo $id_ad;?>';
                                        }
                                    }
                                });

                                event.preventDefault();
                            })
                        });

                    </script>
                    <?php

                }
                else{
                    header("location: index.php");
                    exit();
                }
            }
            else{
                header("location: index.php");
                exit();
            }
        }
        else{
            header("location: index.php");
            exit();
        }
    }
    else{
        header("location: index.php");
        exit();
    }

} else{
    header("location: index.php");
    exit();
}
?>