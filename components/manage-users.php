<?php
session_start();
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
?>

<script>
    function deleteUser(userId) {

        $.ajax({
            url: "./components/delete-user.php",
            method: "POST",
            data:{user_id:userId},
            success: function (data) {
                alert(data);
            }
        })
    }

    function getSelectedOption(){
        return $("#users").val();
    }
</script>
