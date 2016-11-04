<?php
	$db_host="localhost";
	$db_user="root";
	$db_password="wyciekpamieci666";
	$db_name="online_classifieds";

    function getConnection(){

        $db_host="localhost";
        $db_user="root";
        $db_password="wyciekpamieci666";
        $db_name="online_classifieds";

        $connection=@new mysqli($db_host,$db_user,$db_password,$db_name);

        if($connection->connect_errno!=0) {
            echo "Error: ".$connection->connection_errno();
            exit();
        }

        if (!$connection->set_charset("utf8")) {
            echo "Error loading character set utf8".$connection->error;
            exit();
        }

        return $connection;
    }
?>