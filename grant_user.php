<?php

include_once "./connect.php";

if(isset($_COOKIE['id']) && isset($_COOKIE['token'])){
    $connection=getConnection();
    $_COOKIE['id']=mysqli_real_escape_string($connection,htmlentities($_COOKIE['id']));
    $_COOKIE['token']=mysqli_real_escape_string($connection,htmlentities($_COOKIE['token']));

    $query="SELECT permission_user_type FROM (user JOIN user_type on type_user=id_user_type) JOIN session ON id_user_session=id_user WHERE token_session='$_COOKIE[id]' AND second_token_session='$_COOKIE[token]'";
    $result=mysqli_query($connection,$query);
    $row_count=mysqli_num_rows($result);
    if($row_count>0){
        $row=mysqli_fetch_assoc($result);
        if($row['permission_user_type']<111){
            header("location: dashboard.php");
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

$user_id=intval($_POST['user_id']);
$group=intval($_POST['group']);

$query="UPDATE user SET type_user=$group WHERE id_user=$user_id";

if(mysqli_query($connection,$query)){
    echo "Pomyślnie dodano użytkownika do grupy";
    exit;
}
else{
    echo "Wystąpił błąd przy dodawaniu użytkownika do grupy";
    exit;
}


?>