<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Dbconn.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table { 
	width: 750px; 
	border-collapse: collapse; 
	margin:50px auto;
	}

/* Zebra striping */
tr:nth-of-type(odd) { 
	background: #eee; 
	}

th { 
	background: #3498db; 
	color: white; 
	font-weight: bold; 
	}

td, th { 
	padding: 10px; 
	border: 1px solid #ccc; 
	text-align: left; 
	font-size: 18px;
	}

/* 
Max width before this PARTICULAR table gets nasty
This query will take effect for any screen smaller than 760px
and also iPads specifically.
*/
@media 
only screen and (max-width: 760px),
(min-device-width: 768px) and (max-device-width: 1024px)  {

	table { 
	  	width: 100%; 
	}

	/* Force table to not be like tables anymore */
	table, thead, tbody, th, td, tr { 
		display: block; 
	}
	
	/* Hide table headers (but not display: none;, for accessibility) */
	thead tr { 
		position: absolute;
		top: -9999px;
		left: -9999px;
	}
	
	tr { border: 1px solid #ccc; }
	
	td { 
		/* Behave  like a "row" */
		border: none;
		border-bottom: 1px solid #eee; 
		position: relative;
		padding-left: 50%; 
	}

	td:before { 
		/* Now like a table header */
		position: absolute;
		/* Top/left values mimic padding */
		top: 6px;
		left: 6px;
		width: 45%; 
		padding-right: 10px; 
		white-space: nowrap;
		/* Label the data */
		content: attr(data-column);

		color: #000;
		font-weight: bold;
	}

}
button{
background-color: green;
padding: 10px 30px;
color:white;
cursor:pointer;
border:none;

}
</style>
</head>
<body>
<form action="updateservlet" method="post">
<table>
  <thead>
    <tr>
    <th>Product Id</th>
     <th>Customer Name</th>
      <th>Customer Email</th>
      <th>Order Product</th>
      <th>Price</th>
       <th>Payment</th>
    </tr>
  </thead>
  <tbody>
   <%
       
   String upi=session.getAttribute("semail").toString();
   String type="Buyed";
       Connection con;
       
      
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `bookshop`.`card` where seller='"+upi+"' and status='"+type+"'  ");
       
       ResultSet rs=ps.executeQuery();
     
     while(rs.next())
       {
       	     	
    	String image=rs.getString(3);
    	  
    	   
       %>
    <tr>
      <td data-column="Job Title"><%=rs.getString(4)%></td>
      <td data-column="First Name"><%=rs.getString(8)%></td>
      <td data-column="First Name"><%=rs.getString(2)%></td>
      <td data-column="Last Name"><%=rs.getString(3)%></td>
      <td data-column="Last Name"><%=rs.getString(7)%></td>
      
      
      <input type="hidden" name="pname" value="<%=rs.getString(3)%>"> 
      <input type="hidden" name="price" value="<%=rs.getString(7)%>">
      <input type="hidden" name="cname" value="<%=rs.getString(8)%>">
      <input type="hidden" name="quan" value="<%=rs.getString(6)%>">
      <input type="hidden" name="status" value="<%=rs.getString(13)%>">
      <input type="hidden" name="mid" value="<%=rs.getString(15)%>">
      <input type="hidden" name="address" value="<%=rs.getString(17)%>">
       <input type="hidden" name="upi" value="<%=upi%>">
      
      <td ><button>Done</button></td>
    </tr>
   
   <%} %>
  </tbody>
</table>

</form>
</body>
</html>