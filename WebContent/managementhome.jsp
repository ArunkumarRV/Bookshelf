 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import=" Dbconn.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Management</title>
<link rel="stylesheet" href="css/main.css">
</head>
<style>
body{
background-image:url("images/47.jpeg");
background-size:cover;
}
a{
text-decoration:none;
}

</style>
 <%
       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT count(*) FROM `bookshop`.`usereg` Where status='request' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	   int cout=rs.getInt(1);  
    	     
    	  
    	   
       %>




<body>
<div class="container">
  <div class="nav">
    <div class="logo">
    </div>
    <ul>
     <h3><a href="useraccept.jsp"><span style="color:white">New Shop Owner</span><span style="color:white">(<%=cout %>)</span></a></li>
     <%} %>
     
     <%
       
       Connection con1;
       
       
       con1=dbconn.create();
       PreparedStatement ps1=con.prepareStatement("SELECT count(*) FROM `bookshop`.`addbooks` Where quantity='1' ");
       
       ResultSet rs1=ps1.executeQuery();
       
       while(rs1.next())
       {
    
    	   int count=rs1.getInt(1);  
    	   %>  
      <li><a href="userslist.jsp"><span style="color:white">Bookshop Registered List</span></a></li>
      <li><a href="adminproductapprove.jsp"><span style="color:white">Product</span></a></li>
       <%-- <li><a href="inventory.jsp"><span style="color:white">Inventory</span><span style="color:black">(<%=count %>)</span></a></li> --%>
      <%} %>
      
      
       <li><a href="stock.jsp"><span style="color:white">Stock Management</span></a></li>
        <li><a href="viewfeedback.jsp"><span style="color:white">View Feedback</span></a></li>
      <li><a href="homepage.jsp"><span style="color:white">Logout</span></a>		</li></h3>
    </ul>
  </div>

  <div class="hero">
    <!-- <div class="title">Management</div> -->

 
  </div>

  

    <div class="go">
      <i class="fas fa-paper-plane"></i>
    </div>
  </div>

</div>
</body>
</html>