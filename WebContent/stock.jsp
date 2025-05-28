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

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;400;600&display=swap');

* {
  box-sizing: border-box;
}

body {
  font-family: 'Poppins', 'Verdana', sans-serif;
  display: flex;
  align-items: center;
  padding: 1.25em;
  min-height: 100vh;
  color: #444;
}

table {
  width: 100%;
  border-spacing: 0;
  border-radius: 1em;
  overflow: hidden;
}

thead {
 visibility: hidden;
 position: absolute;
 width: 0;
 height: 0;
}

th {
  background: #215A8E;
  color: #fff;
}

td:nth-child(1) {
  background: #215A8E;
  color: #fff;
  border-radius: 1em 1em 0 0;
}

th, td {
  padding: 1em;
}

tr, td {
  display: block;
}

td {
  position: relative;
}

td::before {
  content: attr(data-label);
  position: absolute;
  left: 0;
  padding-left: 1em;
  font-weight: 600;
  font-size: .9em;
  text-transform: uppercase;
}

tr {
  margin-bottom: 1.5em;
  border: 1px solid #ddd;
  border-radius: 1em;
  text-align: right;
}

tr:last-of-type {
  margin-bottom: 0;
}

td:nth-child(n+2):nth-child(odd) {
  background-color: #ddd;
}


@media only screen and (min-width: 768px) {
  
  table {
    max-width: 1200px;
    margin: 0 auto;
    border: 1px solid #ddd;
  }
  
  thead {
    visibility: visible;
    position: relative;
  }
  
  th {
    text-align: left;
    text-transform: uppercase;
    font-size: .9em;
  }
  
  tr {
    display: table-row;
    border: none;
    border-radius: 0;
    text-align: left;
  }
  
  tr:nth-child(even) {
  background-color: #ddd;
}
  
  td {
    display: table-cell;
  }
  
  td::before {
    content: none;
  }
  
  td:nth-child(1) {
    background: transparent;
    color: #444;
    border-radius: 0;
  }
  
  td:nth-child(n+2):nth-child(odd) {
    background-color: transparent;
  }
  
  
}
body{
background-image: url("images/imagecss.avif");
background-size:100%;

}

</style>
</head>
<body>
  <h1>Stock Management</h1>
  
<table>

  <thead>
    <th>name</th>
    <th>Shop ID</th>
    <th>Price</th>
    <th>image</th>
    <th>Author Name</th>
    <th>Quantity</th>
    <th>Location</th>
  
  </thead>
    <%
       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `bookshop`.`addbooks` ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	
  %>
  
  
  <tbody>
    <tr>
      <td data-label="name"><%=rs.getString(3) %></td>
      <td data-label="war"><%=rs.getString(4) %></td>
      
      <td data-label="obp"><%=rs.getString(5) %></td>
      <td data-label="ba"> <img src="Local/<%=rs.getString(6) %>" width="40" height="30"></td>
      <td data-label="slg"><%=rs.getString(8) %></td>
      <td data-label="ops"><%=rs.getString(9) %></td>
      <td data-label="rbi"><%=rs.getString(10) %></td>
    
    </tr>
      
  <%} %>
  </tbody>
  
</table>
</body>
</html>