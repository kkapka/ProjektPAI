<?php
	session_start();
	
	require_once "connect.php";
	
	$connection=getConnection();

	if($connection->connect_errno!=0) {
		echo "Error: ".$connection->connection_errno();
	}
	else{
		$login=$_POST['login'];
		$password=$_POST['password'];
		
		$cookie_login=sha1($login); // reverse name for cookie name: nigol_eikooc
		$cookie_password=sha1($password);	// reverse name for cookie name:	drowssap_eikooc
		
		setcookie("nigol_eikooc", $cookie_login, time() + (86400 * 30), "/");
		setcookie("drowssap_eikooc", $cookie_password, time() + (86400 * 30), "/");
		

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