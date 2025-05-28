<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
  background-image: url("http://www.graphicsfuel.com/wp-content/uploads/2013/08/blurred-texture-background02-preview.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  background-position: center;
  font-family: 'Quicksand', sans-serif;

  
}
.title {
  text-align:center;
  margin-left: 15px;
  color:#4D4D4D;

  
}

.formbox {
  margin: 50px auto;
  width: 400px;
  height: 690px;
  border-radius: 2px/2px;
  background-color: white;
  border: 7px solid #cbc9c9;

  -webkit-border-radius: 2px/2px;
  -moz-border-radius: 2px/2px;
  -webkit-box-shadow: 50px 50px 50px rgba(0,0,0,3);
  -moz-box-shadow: 50px 50px 50px rgba(0,0,0,3);
   box-shadow: 1px 2px 5px rgba(5,5,5,3);

}
ul li {
  list-style: none;
  padding: 10px;
}
label {
  display: block;
  cursor: pointer;
  margin: 2px;
  color: black;
}
textarea {
  width: 300px;
  height: 100px;
  color:#9aa3ad;
  font-family: 'Quicksand', sans-serif;
  font-size:18px;

}
.other {
  width: 70px;

}
.ready {
  background: #8E81CE;
  color: #fff;
  border-radius: 5px;
  border: none;
  width: 100px;
  height:30px;
  margin-top: -15px;
  font-size:16px;
  cursor: pointer;
  font-family: 'Quicksand', sans-serif;
  font-weight: bold;
  text-align: center;



  
}

</style>
</head>
<body>
<head>
      <link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet' type='text/css'>
      <title>My First Form </title>
  </head>
  <body>
  <form action="deliverregister" method="post" >
    <div class="formbox">
    <h1 class="title">Register Form</h1>

    
    
      <ul>
        <li>
          <label for="name">Full Name:</label>
          <input id="name" name="name" />
        </li>
        
        <li>
          <label for="email">Email:</label>
          <input id="email" name="email"/>
        </li>
      
        
        
        <li>
          <label for="password">Password:</label>
          <input type="password" name="pass"/>
        </li>
        
        <li>
          <label for="gender">Gender:</label>
          <input type="radio" id="gender" name="gender"/> Female
          <input type="radio" id="gender" name="gender"/> Male
          <input type="radio" id="gender" name="gender"/> Other <input class="other" />
        </li>
        
        
        
        <li>
          <label for="about">About you</label>
          <textarea id="about" name="about"> Tell me about yourself</textarea>
        </li>
        
        <li>
        <input type="submit" value="Ready" name="about" class="ready"/>
        </li>
        
        
    </ul>
    </div>
    </form>
  </body>
</body>
</html>