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
@import "compass/css3";

table {
  font-family: 'Arial';
  margin: 25px auto;
  border-collapse: collapse;
  border: 1px solid #eee;
  border-bottom: 2px solid #00cccc;
  box-shadow: 0px 0px 20px rgba(0,0,0,0.10),
     0px 10px 20px rgba(0,0,0,0.05),
     0px 20px 20px rgba(0,0,0,0.05),
     0px 30px 20px rgba(0,0,0,0.05);
  tr {
     &:hover {
      background: #f4f4f4;
      
      td {
        color: #555;
      }
    }
  }
  th, td {
    color: #999;
    border: 1px solid #eee;
    padding: 12px 35px;
    border-collapse: collapse;
  }
  th {
    background: #00cccc;
    color: #fff;
    text-transform: uppercase;
    font-size: 12px;
    &.last {
      border-right: none;
    }
  }
}
button{
padding:10px 10px;


}

body{
background-image: url("images/menn.jpg");
background-repeat: no-repeat;
background-size:100% 1000%;
}



</style>
</head>
<body>
<table>
  <thead>
    <tr>
      <th>Product Name</th>
      <th>Price</th>
      <th>Customer Name</th>
      <th>Quantity</th>
      <th>Status</th>
      <th>Shop Id</th>
       <th>Address</th>
         <th>Status</th>
        
    </tr>
  </thead>
 
  
  <%
String upi=session.getAttribute("semail").toString();

Connection con;
   con=dbconn.create();
   PreparedStatement ps=con.prepareStatement("SELECT * FROM `bookshop`.`orderupdate` where status='ordered' and mid='"+upi+"'  ");

   ResultSet rs=ps.executeQuery();
   con=dbconn.create();
  
   while(rs.next())
     {
  	 



%>
  
   <tbody>
    <tr>
      <td><%=rs.getString(2)%></td><br>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(6)%></td>
          <td><%=rs.getString(7)%></td>
            <td><a href="<%=rs.getString(8)%>">view map</a></td>
          <td><a href="deliverystatus.jsp"><button>delivered</button></a></td>
    </tr>
    
    <%} %>
  </tbody>
</table>

<script>
$('table tr').each(function(){
	  $(this).find('th').first().addClass('first');
	  $(this).find('th').last().addClass('last');
	  $(this).find('td').first().addClass('first');
	  $(this).find('td').last().addClass('last');
	});

	$('table tr').first().addClass('row-first');
	$('table tr').last().addClass('row-last');


</script>
</body>
</html>