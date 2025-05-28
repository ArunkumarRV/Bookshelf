<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="Dbconn.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book shop owner!</title>
<link rel="stylesheet" href="css/mmain.css">
<style>
body{

background-image:url("images/bookk.jpg");

background-size:cover;

  background-attachment: fixed;

}

a{
text-decoration:none;
color:white;
}
a:hover{
color:red;
}

</style>

</head>



<%
 session.setAttribute("loca", "hi");
       
       Connection con;
       
       int cout=0; String a="";
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement(" SELECT*FROM `bookshop`.`addbooks` ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    
    	    
       }   %> 

<body>
<div class="container">
  <div class="nav">
    <div class="logo">
    </div>
    <ul >
      <li><a href="bookupdate.jsp"><span font-size:15px;">book Updation </span></a></li>
  <!--   <li><a href="dmlogin.jsp"><span font-size:15px;">Delivery Man</span></a></li> -->
      <li><a href="medicalproductorder.jsp"><span font-size:15px;">My Product Order</span></a></li>
     <!--   <li><a href="employeelist.jsp"><span font-size:15px;">Employee List</span></a></li> -->
      <li><a href="Stafflogin.jsp"><span  font-size:15px;">Logout</span></a></li>
    </ul>
  </div>

  <div class="hero">
  <!--   <div class="title"></div>
 -->
  <!--   <div class="button">
      About
    </div> -->
  </div>

  

    <div class="go">
      <i class="fas fa-paper-plane"></i>
    </div>
  </div>
	<%%> 
</div>
</body>
</html>