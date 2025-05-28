<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Userlogin</title>
<style>

*{
	padding: 0;
	margin: 0;
}

.container{
	width: 100%;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	background-image: url(https://c4.wallpaperflare.com/wallpaper/531/951/621/digital-digital-art-artwork-illustration-minimalism-hd-wallpaper-preview.jpg);
	background-size: cover;

}

.login_box{
	background-color:transparent;
    padding:50px 20px;
	width: 400px;
	border-radius: 20px;
	border: 1px solid #fff;
	/* filter: blur(8px); */
	backdrop-filter: blur(4px);
}


h1{
	text-align:center;
	margin-bottom: 20px;
	font-size:40px;
	color:#FFF;
}

.input_box{
	width: 90%;
	margin: auto;
	height: 40px;
	position: relative;
	margin-bottom: 20px;
}

.input_box input{
	width: 100%;
    height:40px;
	box-sizing: border-box;
	outline: none;
	border: none;
    padding: 0px 20px;
	background-color:transparent;
	border-bottom: 1px solid #fff;
	color: #fff;
	font-size: 18px;
}

.input_box label{
	position: absolute;
	top: 50%;
	left: 10px;
	transform:translateY(-50%);
	font-size:18px;
	font-weight:500;
	color: #FFF;
	transition: .3s;
}

.icon{
	position: absolute;
	top: 50%;
	right: 10px;
	transform: translateY(-50%);
	color: #fff;
}

.rem{
	display: flex;
	justify-content: center;
	align-items: center;
	color:#fff;
	font-size: 14px;
}

.rem input{
	margin-right: 5px;
}

.rem a{
	text-decoration: none;
	margin-left:5px;
	color:#fff;
	font-weight: bold;
}

.login{
	display: flex;
	justify-content: center;
}

.login button{
	width: 200px;
	height:40px;
	margin-top:20px;
	border-radius: 20px;
	font-size:18px;
	font-weight:bold;
	background-color: #fff;
	border: none;
	outline:none;
	transition: ..3s;
}

.reg{
	display: flex;
	justify-content: center;
	margin-top:20px;
	font-size: 14px;
	color: #ffff;
}

.reg a{
	text-decoration: none;
	margin-left: 5px;
	color: #fff;
	font-weight: bold;
}


.input_box input:focus ~ label,
.input_box input:valid ~ label{
	top: 0;
 }


 .login button:hover{
	cursor: pointer;
	background-color:transparent;
	color:#fff;
	border: 1px solid #fff;
 }
</style>
</head>
<body>
<form action="loginservlet" method="post">
<!-- <head>
        <title>Login form effect</title> 
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,800;1,600&display=swap" 
    rel="stylesheet">
    <form action="loginservlet" method="post">
   
   <link rel="stylesheet" href="style.css">
   </head>
   <body>
    <div class="form">
        <div class="title">Login form</div>
        <br><br>
        <div class="name"><input type="Email" class="nameinput" name="email" placeholder="Email"></div>
        <br><br>
        <div class="password"><input type="password" class="passwordinput" name="pass" placeholder="Password"></div>
        <br><br>
        <div><button class="submit">submit</button></div><br><br>
        <p>New User     <a href="userregister.jsp">Register here...</a></p>
        
        
        
    </div>
    

   </body> -->
   
   
   
   
   <div class="container">
	<div class="login_box">
		<h1>Login</h1>
		<div class="input_box">
			<input type="text" name="email" required="">
			<label for="">Email</label>
			<ion-icon class="icon " name="mail-outline"></ion-icon>
		</div>
		<div class="input_box">
			<input type="password"  name="pass" required="">
			<label for="">password</label>
			<ion-icon class="icon" name="lock-closed-outline"></ion-icon>
		</div>
		
		<div class="login">
			<button>Log in </button>
		</div>
		<div>
			<div class="reg">
				<p>don't have a account </p>
				<a href="userregister.jsp">registration</a>
			</div>
		</div>
	</div>
 </div>
 

	






	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
   
  </form> 
</body>
</html>