<?php
session_start();

/* Paging init */
global $adsLimit;
global $start;
global $page;

$adsLimit=10;

if(isset($_GET['page'])){
    $page=intval($_GET['page']);
}

if(!isset($_GET['page'])){
    $page=1;
}

if($page==NULL){
    $page=1;
}

if($page==1){
    $start=0;
}
else{
    $start=$adsLimit*($page-1);
}
/*  */

include_once "./components/important_includes.php";

if(!isset($_COOKIE['id']) || !isset($_COOKIE['token'])){
    header("location: ../index.php");
    exit();
}
else{
    $connection=getConnection();
    $_COOKIE['id']=htmlentities(mysqli_real_escape_string($connection,$_COOKIE['id']));
    $_COOKIE['token']=htmlentities(mysqli_real_escape_string($connection,$_COOKIE['token']));

    $query="SELECT id_user_session FROM session WHERE token_session='$_COOKIE[id]' AND second_token_session='$_COOKIE[token]'";

    if($result=mysqli_query($connection,$query)){
        $row_count=mysqli_num_rows($result);

        if($row_count>0){
            $row=mysqli_fetch_assoc($result);
            $id_user=$row['id_user_session'];

            $query="SELECT permission_user_type FROM user JOIN user_type ON id_user_type=type_user WHERE id_user=$id_user";

            $tmp_result=mysqli_query($connection,$query);
            $tmp_row=mysqli_fetch_assoc($tmp_result);

            $permission_type=$tmp_row['permission_user_type'];


            if($permission_type>=110){
                $query="SELECT id_ad,title_ad,datetime_add_ad,datetime_end_ad,author_ad FROM ad LIMIT $adsLimit OFFSET $start";
                $query2="SELECT id_ad,title_ad,datetime_add_ad,datetime_end_ad,author_ad FROM ad";
            }
            else {
                $query="SELECT id_ad,title_ad,datetime_add_ad,datetime_end_ad,author_ad FROM ad WHERE author_ad=$row[id_user_session] LIMIT $adsLimit OFFSET $start";
                $query2="SELECT id_ad,title_ad,datetime_add_ad,datetime_end_ad,author_ad FROM ad WHERE author_ad=$row[id_user_session]";
            }

            if($result=mysqli_query($connection,$query)){
                $row_count=mysqli_num_rows($result);

                if($row_count>0){
                    echo '<div id="no-more-tables">';
                    echo '<table>';
                    echo '<thead><tr>'.'<th>Tytuł ogłoszenia</th>'.'<th>Data dodania</th>'.'<th>Data wygaśnięcia</th>'.'<th>Podgląd ogłoszenia</th>'.
                        '<th>Edycja ogłoszenia</th>'.'<th>Usuń ogłoszenie</th>'.
                        '</tr></thead>';

                    while($row=mysqli_fetch_assoc($result)){
                        echo '<tbody><tr>'.'<td style="word-break: break-all;" data-title="Tytuł ogłoszenia">'.htmlentities($row['title_ad']).'</td>'.'<td data-title="Data dodania">'.$row['datetime_add_ad'].'</td>'.'<td data-title="Data wygaśnięcia">'.$row['datetime_end_ad'].'</td>'.
                            '<td data-title="Podgląd ogłoszenia">'.'<a href="'.'./ad.php?id='.$row['id_ad'].'">'.'Podgląd'.'</a>'.'</td>'.
                            '<td data-title="Edycja ogłoszenia">'.'<a href="'.'./edit-ad-form.php?ad_id='.$row['id_ad'].'&author_ad='.$row['author_ad'].'">'.'Edytuj'.'</a>'.'</td>'.
                            '<td data-title="Usuń ogłoszenie">'.'<a href="'.'./components/delete-ad.php'.'?ad_id='.$row['id_ad'].'&author_ad='.$row['author_ad'].'"'.'onclick="return confirmAdDelete();"'.'>'.'Usuń'.'</a>'.'</td>'.
                            '</tr></tbody>';
                    }
                    $row_count=mysqli_num_rows(mysqli_query($connection,$query2));

                    $numberOfPages=ceil($row_count/$adsLimit);


                    echo '</table>';
                    echo '</div>';
                    echo '<ul id="pagina">';
                    /*for($i=1;$i<=$numberOfPages;$i++){
                        echo<<<echo_end
    <li><a href="dashboard.php?page=$i">$i</a></li>
echo_end;

                    }*/
                    echo '</ul>';

                }
            }
        }
    }
}
?>
<script>
    $(function() {
        $("#pagina").pagination({
            items: '<?php echo $row_count; ?>',
            itemsOnPage: 10,
            cssStyle: 'light-theme',
            hrefTextPrefix: "?page=",
            currentPage: '<?php echo $page;?>',
            nextText: 'Dalej',
            prevText: 'Wróć'
        });
    });

    function confirmAdDelete() {
        var text='Czy usunąć ten artykuł ?';
        var result=confirm(text);

        if(result==true){
            return true;
        }
        else{
            return false;
        }
    }
</script>

