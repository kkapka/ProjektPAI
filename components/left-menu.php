<div class="bar">Menu</div>
    <ul class="left-menu-ul">
        <li class="left-menu-li">
            <a href="index.php">Domowa</a>
		</li>
        <?php
            if(!isset($_COOKIE['id'])){
                echo<<<echo_end
                    <li class="left-menu-li">
                        <a href="login.php">Zaloguj się</a>
                    </li>
                    <li class="left-menu-li">
                        <a href="register.php">Zarejestruj się</a>
                    </li>
echo_end;

            }

            if(isset($_COOKIE['id'])){
                $connection=getConnection();
                $query="SELECT id_user_session FROM session WHERE token_session='$_COOKIE[id]'";
                $result=mysqli_query($connection,$query);
                $row=mysqli_fetch_assoc($result);

                $id_user=$row['id_user_session'];
                $query="SELECT permission_user_type FROM user JOIN user_type ON type_user=id_user_type WHERE id_user='$id_user'";
                $result=mysqli_query($connection,$query);
                $row=mysqli_fetch_assoc($result);

                if($row['permission_user_type']>=100){
                    echo<<<echo_end
                        <li class="left-menu-li">
                            <a href="dashboard.php">Panel użytkownika</a>
                        </li>
                        <li class="left-menu-li">
                            <a href="add_ad.php">Dodaj ogłoszenie</a>
                        </li>
                        <li class="left-menu-li">
                            <a href="account-details.php">Zmień dane osobowe</a>
                        </li>
                       <li class="left-menu-li">
                            <a href="logout.php">Wyloguj się</a>
                        </li>
echo_end;
                    if($row['permission_user_type']==111){
                        echo<<<echo_end
                        <li class="left-menu-li">
                            <a href="users-management.php">Zarządzaj użytkownikami</a>
                        </li>

echo_end;
                    }

                }
            }
        ?>
    </ul>