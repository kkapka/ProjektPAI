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

include_once "./components/important_includes.php";
$connection=getConnection();
$query="SELECT id_user,login_user FROM user";
$result=mysqli_query($connection,$query);

echo '<select id="users" >';
while($row=mysqli_fetch_assoc($result)){
    echo '<option value="'.$row['id_user'].'">'.$row['login_user'].'</option>';
}
echo '</select>';

echo '<button onclick="deleteUser(getSelectedOption())">Usuń użytkownika</button>';
echo '<select id="group">';
echo '<option value=1>Administratorzy</option>';
echo '<option value=2>Moderatorzy</option>';
echo '<option value=3>Userzy</option>';
echo '</select>';

echo '<button onclick="grantUser(document.getElementById(\'users\').value,document.getElementById(\'group\').value)">Przydziel</button>'
?>

<script>
    function deleteUser(userId) {

        $.ajax({
            url: "./components/delete-user.php",
            method: "POST",
            data:{user_id:userId},
            success: function (data) {
                alert(data);
                if(data=="Usunięto użytkownika"){
                    window.location.href="users-management.php";
                }
            }
        })
    }

    function grantUser(userId,group){
        $.ajax({
            url: './grant_user.php',
            method: 'POST',
            data: {user_id:userId,group:group},
            success: function (data) {
                alert(data);
                if(data=="Pomyślnie dodano użytkownika do grupy"){
                    window.location.href="users-management.php";
                }
            }

        })
    }

    function getSelectedOption(){
        return $("#users").val();
    }
</script>
