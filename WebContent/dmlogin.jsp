<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
@import url("https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap");

* {
  margin: 0;
  padding: 0;
  font-family: "Roboto", sans-serif;
}

body {
  background-image: url(https://1.bp.blogspot.com/-18N9n9-5qYw/X38r3WNmGAI/AAAAAAAAHQI/QwG5AI1obs8po50rx3AJRk5u6AU0vZKFgCLcBGAsYHQ/s1920/64.jpg);
  background-repeat: no-repeat;
  background-size: cover;
  background-attachment: fixed;
}

.container {
  display: flex;
  justify-content: center;
  width: 100%;
  margin-top: 100px;
}

.card {
  background-color: #ffffff80;
  padding: 30px;
  border-radius: 4%;
  box-shadow: 3px 3px 1px 0px #00000060;
}

h1 {
  text-align: center;
  margin-bottom: 20px;
  color: #272262;
}
.label-float input {
  width: 100%;
  padding: 5px 5px;
  display: inline-block;
  border: 0;
  border-bottom: 1px solid #272262;
  background-color: transparent;
  outline: transparent;
  min-width: 180px;
  font-size: 16px;
  transition: all 0.3s ease-out;
  border-radius: 0;
}

.label-float{
  position: relative;
  padding: 13px;
  margin-top; 5%
  margin-bottom:5%
}

label-float input:focus {
  border-bottom: 2px solid #4038a0;
}

.label-float label {
  color: #272262;
  pointer-event: relative;
  position: absolute;
  top: 0;
  left: 0;
  margin-top: 13px;
  trasition: all 0.3s ease-out;
}

.label-float input:focus + label {
  font-size: 13px;
  margin-top: 0;
  color: #4038a0;
}

button{
  background-color:transparent;
  border-color: #272262;
  color:#272262;
  padding: 7px;
  font-weidth: bold;
  font-size: 12pt;
  margin-top:20px;
  border-radius:4px;
  cursor:pointer;
  outline: nome;
  trasition: all 0.4s ease-out;
}

button:hover{
  background-color:#272262;
  color:#fff;
}

.justify-center{
  display: flex;
  justify-content: center;
}

hr{
  margin-top: 10px;
  margin-bottom:10px;
  width: 60%
}

p{
  color: #272262;
  font-size: 14px;
  text-align: center;
}

a{
  color:#7a3077;
  font-wiedth: bold;
  text-decoration: transparent;
  trasition: all 0.3s ease-out;
}

a:hover{
  color:#272262;
}



</style>
</head>
<body>
<form action="deliverlog" method="post">
<div class='container'>
  <div class='card'>
    <h1>login</h1>

    <div class='label-float'>
      <input type='text' id='usuario' name="email" paceholder=''>
      <label for='usuario'>Email</label>
    </div>

    <div class='label-float'>
      <input type='password' id='senha'  name="pass" paceholder=''>
      <label for='usuario'>Password</label>
    </div>

    <div class='justify-center'>
      <button>Enter</button>
    </div>

    <div class='justify-center'>
      <hr>
    </div>

    <p> You don't have an account?
      <a href="dmregister.jsp">Register here...</a>
    </p>

  </div>
</div>
</form>
</body>
</html>