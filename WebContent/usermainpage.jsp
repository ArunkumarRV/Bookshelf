<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Interface</title>

<style>
* {
  box-sizing: border-box;
}

body {
  margin: 0;
  padding: 0;
}

.navbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  background-color: #333;
  color: #fff;
}

.brand-title {
  font-size: 1.5rem;
  margin: 0.8rem;
}

.navbar-links ul {
  margin: 0;
  padding: 0;
  display: flex;
}

.navbar-links li {
  list-style: none;
}

.navbar-links li:hover {
  background-color: #555;
}

.navbar-links li a {
  text-decoration: none;
  color: white;
  padding: 1rem;
  display: block;
}

.toggle-button {
  position: absolute;
  top: 1rem;
  right: 1rem;
  display: none;
  flex-direction: column;
  justify-content: space-between;
  width: 28px;
  height: 21px;
}

.toggle-button .bar {
  height: 3px;
  width: 100%;
  background-color: white;
  border-radius: 10px;
}

@media (max-width: 400px) {
  .toggle-button {
    display: flex;
  }

  .navbar {
    flex-direction: column;
    align-items: flex-start;
  }

  .navbar-links {
    display: none;
    width: 100%;
  }

  .navbar-links ul {
    width: 100%;
    flex-direction: column;
  }

  .navbar-links li {
    text-align: center;
  }

  .navbar-links li a {
    padding: 0.5rem 1rem;
  }

  .navbar-links.active {
    display: flex;
  }
}
body{
 background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("images/boook.jpg");
 background-repeat: no-repeat;
background-size: 100% 1550%;
background:image:fixed;


}

</style>
</head>
<body>
<nav class="navbar">
  <div class="brand-title">User</div>
  <a href="#" class="toggle-button">
    <span class="bar"></span>
    <span class="bar"></span>
    <span class="bar"></span>
  </a>
  <div class="navbar-links">
  <%session.setAttribute("no", "1"); %>
    <ul>
      <li><a href="searchparkingslot.jsp">Search book Shop</a></li>
      <li><a href="myorder.jsp">My Order</a></li>
     <li><a href="feedback.jsp">Feedback</a></li>
    <!--  <li><a href="trackingproduct.jsp">Track Your Product</a></li> -->
      <li><a href="homepage.jsp">Logout</a></li>
    </ul>
  </div>
</nav>
</body>
</html>