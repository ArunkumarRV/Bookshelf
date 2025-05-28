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
body {
	 margin: 0;
	 padding: 20px;
	 font-family: lato;
}
 * {
	 box-sizing: border-box;
}
 .table {
	 width: 100%;
	 border-collapse: collapse;
}
 .table td, .table th {
	 padding: 12px 15px;
	 border: 1px solid #ddd;
	 text-align: center;
	 font-size: 16px;
}
 .table th {
	 background-color: darkblue;
	 color: #fff;
}
 .table tbody tr:nth-child(even) {
	 background-color: #f5f5f5;
}
/*responsive*/
 @media (max-width: 500px) {
	 .table thead {
		 display: none;
	}
	 .table, .table tbody, .table tr, .table td {
		 display: block;
		 width: 100%;
	}
	 .table tr {
		 margin-bottom: 15px;
	}
	 .table td {
		 text-align: right;
		 padding-left: 50%;
		 text-align: right;
		 position: relative;
	}
	 .table td::before {
		 content: attr(data-label);
		 position: absolute;
		 left: 0;
		 width: 50%;
		 padding-left: 15px;
		 font-size: 15px;
		 font-weight: bold;
		 text-align: left;
	}
}
 


</style>
</head>
<body>
<table class="table">
  <thead>
    <tr>
      <th>Name</th>
      <th>Email</th>
      <th>Contact</th>
      <th>Address</th>
      
    </tr>
  </thead>
  
   
  <%
/* String upi=session.getAttribute("semail").toString();
 */
Connection con;
   con=dbconn.create();
   PreparedStatement ps=con.prepareStatement("SELECT * FROM `bookshop`.`employee` ");

   ResultSet rs=ps.executeQuery();
   con=dbconn.create();
  
   while(rs.next())
     {
  	 



%>
  
  
  <tbody>
    <tr>
      <td data-label="S.No"><%=rs.getString(2)%></td>
      <td data-label="Name"><%=rs.getString(3)%></td>
      <td data-label="Age"><%=rs.getString(4)%></td>
      <td data-label="Marks%"><%=rs.getString(5)%></td>
     
    </tr>

   
  </tbody>
  <%} %>
</table>
</body>
</html>