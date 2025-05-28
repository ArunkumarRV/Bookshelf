<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="Dbconn.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: "Inter", sans-serif;
  color: #343a40;
  line-height: 1;
  display: flex;
  justify-content: center;
}

table {
  width: 800px;
  margin-top: 80px;
  /* border: 1px solid #343a40; */
  border-collapse: collapse;
  font-size: 18px;
}

th,
td {
  /* border: 1px solid #343a40; */
  padding: 16px 24px;
  text-align: left;
}

thead th {
  background-color: #087f5b;
  color: #fff;
  width: 25%;
}

tbody tr:nth-child(even) {
  background-color: #f8f9fa;
}

tbody tr:nth-child(odd) {
  background-color: #e9ecef;
}
button{
background-color: buttonshadow;
background-color: skyblue;
padding:10px 10px;
cursor:pointer;

}


</style>
</head>
<body>


<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet" />

<table>
  <thead>
    <tr>
      <th> Name </th>
      <th> ID</th>
      <th>Amount</th>
      <th> Status</th>
      <th>Approve Button</th>
    </tr>
  </thead>


<%

String type="Request";
Connection con;
   con=dbconn.create();
   PreparedStatement ps=con.prepareStatement("SELECT * FROM `bookshop`.`addbooks` where status='"+type+"' ");

   ResultSet rs=ps.executeQuery();
   con=dbconn.create();
  
   while(rs.next())
     {
  	 



%>
  <tbody>
    <tr>
      <th> <%=rs.getString(3) %> </th>
      <td> 80 <%=rs.getString(4) %> </td>
      <td><%=rs.getString(5) %></td>
      <td> <%=rs.getString(7) %> </td>
      <td><a href="productapprove.jsp?data=<%=rs.getString(4) %>"><button>Accept</button> </a></td>
    </tr>
    
   <%} %>
    
  </tbody>
</table>


</body>
</html>