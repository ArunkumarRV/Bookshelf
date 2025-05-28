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
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<style>
table td{
color:black;
}
</style>
 <button onclick="goBack()" class="btn btn-outline-primary" style="float:right;">Go Back</button>
 <!--  <button  class="btn btn-outline-primary" onclick="window.print()" style="float:right;">print</button><br><br>
  -->
<body>

<center>
  <div class="container-fluid">  
<table class="table  table-hover table-dark">
 <thead>
    <tr class="table-active">
      <th style="text-align: center;">Shop name</th>
      <th style="text-align: center;">Email</th>
      <th style="text-align: center;">Mobile</th>
      <th style="text-align: center;">Image</th>
      <th style="text-align: center;">Status</th>
    </tr>
  </thead>
 


	
       <%
       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `bookshop`.`usereg` where  status='request' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	
    	  
    	   
       %>
	

	


     <tr class="table-secondary">
     <td style="text-align: center;"><%=rs.getString(2)%></td>
      <td style="text-align: center;"><%= rs.getString(3) %></td>
       <td style="text-align: center;"><%=  rs.getString(4) %></td>
       <td><center> <embed  src="Local/<%=rs.getString(7) %>" height="30px" width="30px" ></center></td>
       <td><center><a href="update.jsp?name=<%=rs.getString(2)%>"><button class="btn btn-primary">Accept</button></a></center></td> 
     </tr>
	<%} %>






</table>

</div>
</center>

</body>
<script>
$(window).on("load resize ", function() {
	  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
	  $('.tbl-header').css({'padding-right':scrollWidth});
	}).resize();
</script>
<script>
function goBack() {
  window.history.back();
}
</script>
</html>