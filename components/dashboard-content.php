<?php
session_start();

include_once "./components/important_includes.php";

if(!isset($_COOKIE['id'])){
    header("location: ../index.php");
    exit();
}
else{
    $connection=getConnection();
    $query="SELECT id_user_session FROM session WHERE token_session='$_COOKIE[id]'";

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
                $query="SELECT id_ad,title_ad,datetime_add_ad,datetime_end_ad,author_ad FROM ad";
            }
            else {
                $query="SELECT id_ad,title_ad,datetime_add_ad,datetime_end_ad,author_ad FROM ad WHERE author_ad=$row[id_user_session]";
            }

            if($result=mysqli_query($connection,$query)){
                $row_count=mysqli_num_rows($result);

                if($row_count>0){

                    echo '<table>';
                    echo '<tr>'.'<td>Tytuł ogłoszenia</td>'.'<td>Data dodania</td>'.'<td>Data wygaśnięcia</td>'.'<td>Podgląd ogłoszenia</td>'.
                        '<td>Edycja ogłoszenia</td>'.'<td>Usuń ogłoszenie</td>'.
                        '</tr>';

                    while($row=mysqli_fetch_assoc($result)){
                        echo '<tr>'.'<td>'.$row['title_ad'].'</td>'.'<td>'.$row['datetime_add_ad'].'</td>'.'<td>'.$row['datetime_end_ad'].'</td>'.
                            '<td>'.'<a href="'.'./ad.php?id='.$row['id_ad'].'">'.'Podgląd'.'</a>'.'</td>'.
                            '<td>'.'<a href="'.'./edit-ad-form.php?ad_id='.$row['id_ad'].'&author_ad='.$row['author_ad'].'">'.'Edytuj'.'</a>'.'</td>'.
                            '<td>'.'<a href="'.'./components/delete-ad.php'.'?ad_id='.$row['id_ad'].'&author_ad='.$row['author_ad'].'"'.'onclick="return confirmAdDelete();"'.'>'.'Usuń'.'</a>'.'</td>'.
                            '</tr>';
                    }

                    echo '</table>';

                }
            }
        }
    }
}
?>
<script>
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
