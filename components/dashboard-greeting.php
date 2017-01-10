<?php
    $connection=getConnection();
    $_COOKIE['id']=htmlentities(mysqli_real_escape_string($connection,$_COOKIE['id']));
    $_COOKIE['token']=htmlentities(mysqli_real_escape_string($connection,$_COOKIE['token']));
    $query="SELECT id_user_session FROM session WHERE token_session='$_COOKIE[id]' AND second_token_session='$_COOKIE[token]'";
    $result=mysqli_query($connection,$query);
    $num_rows=mysqli_num_rows($result);

    if($num_rows>0){
        $row=mysqli_fetch_assoc($result);
        $id_user=$row['id_user_session'];
        $query="SELECT name_user, surname_user FROM user WHERE id_user='$id_user'";
        $result=mysqli_query($connection,$query);
        $row=mysqli_fetch_assoc($result);
        $num_rows=mysqli_num_rows($result);

        if($num_rows>0){
            echo "<div class=\"bar\"> Witaj ",$row['name_user']," ",$row['surname_user'],"</div>";
        }

        echo "</br>";
        echo "Zarządzaj ogłoszeniami</br></br>";
    }
?>