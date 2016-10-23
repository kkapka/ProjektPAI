<?php
	session_start();
	
	//if((!isset($_POST['login']))||(!isset($_POST['password'])){
	//	header('Location: index.php');
	//	exit();
	//}	
	require_once "connect.php";
	
	$connection=@new mysqli($db_host,$db_user,$db_password,$db_name);
	if($connection->connect_errno!=0) {
		echo "Error: ".$connection->connection_errno();
	}
	else{
		$login=$_POST['login'];
		$password=$_POST['password'];

		$login=htmlentities($login,ENT_QUOTES,"UTF-8");	
		$password=htmlentities($password,ENT_QUOTES,"UTF-8");			

		if($result=@$connection->query(sprintf("SELECT * FROM user WHERE login_user='%s' AND password_user='%s'",
		mysqli_real_escape_string($connection,$login),
		mysqli_real_escape_string($connection,$password)))){
			$count=$result->num_rows;
			
			if($count>0){
				$_SESSION['logged_in']=true;
				$record=$result->fetch_assoc();
				$_SESSION['user']=$record['name_user']." ".$record['surname_user'];
				$_SESSION['mail']=$record['mail_user'];
				unset($_SESSION['login_error']);				
				$result->free_result();
				header("Location: dashboard.php");
			}
			else{
				$_SESSION['login_error']="Zły login lub hasło";
				header("Location: index.php");
			}
			
			$connection->close();
		}
	}
?>