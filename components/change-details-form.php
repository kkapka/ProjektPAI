<?php
session_start();

echo<<<echo_end
<form action="change-details.php" method="post" id="details-change-form">
    Login: <br/> <input type="text" name="login"/><br/>
    Hasło: <br/> <input type="password" name="password"/><br/>
    Powtórz hasło: <br/> <input type="password" name="password2"/>
    Email: <br/><input type="email" name="mail"/>
    Imię: <br/> <input type="text" name="name"/><br/>
    Nazwisko: <br/> <input type="text" name="surname"/><br/>
    Ulica: <br/> <input type="text" name="street"/><br/>
    Nr domu: <br/> <input type="text" name="street_nr"/><br/>
echo_end;

?>
<?php
include_once "list-voivodeships.php";

echo '<div id="counties"></div>';

echo '<div id="locations"></div>';

include "gender-list.php";

echo<<<echo_end
    Numer telefonu: <br/><input type="number" name="phone_number"/>
    <br/><br/>
    <input type="submit" value="Edytuj dane"/><br/>
    </form>
echo_end;
?>

<?php
    $connection=getConnection();
    $_COOKIE['id']=htmlentities(mysqli_real_escape_string($connection,$_COOKIE['id']));
    $query="SELECT id_user_session FROM session WHERE token_session='$_COOKIE[id]'";
    $result=mysqli_query($connection,$query);
    $row=mysqli_fetch_assoc($result);

    $id_user=$row['id_user_session'];

    $query="SELECT * FROM (user JOIN address ON address_user=id_address) JOIN location ON location_address=id_location WHERE id_user=$id_user";
    $result=mysqli_query($connection,$query);
    $row=mysqli_fetch_assoc($result);

    $_SESSION['id_address']=$row['id_address'];
    $_SESSION['id_user']=$row['id_user'];
?>

<script>
    $(document).ready(function(){
        $("input[name=login]").val("<?php echo $row['login_user'];?>");
        $("input[name=mail]").val("<?php echo $row['mail_user'];?>");
        $("input[name=name]").val("<?php echo $row['name_user'];?>");
        $("input[name=surname]").val("<?php echo $row['surname_user'];?>");
        $("select[name=genders]").val("<?php echo $row['gender_user'];?>");
        $("input[name=phone_number]").val("<?php echo $row['telephone_number_user'];?>");

        $("input[name=street]").val("<?php echo $row['street_address'];?>");
        $("input[name=street_nr]").val("<?php echo $row['street_number_address'];?>");

        $("#list-voivodeships").val("<?php echo $row['id_voivodeship_location']?>").change();
        $("#list-counties").val('<?php echo $row['id_county_location'];?>').change();
        $("#list-locations").val('<?php echo $row['id_location'];?>');

        $("#details-change-form").on("submit",function (event) {
            event.preventDefault();

            $.ajax({
                type: "POST",
                url: "change-details.php",
                data: $("#details-change-form").serialize(),
                success: function (data) {
                    alert(data);
                }
            })
        });

    });



</script>
