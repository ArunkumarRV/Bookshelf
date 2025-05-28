<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Dbconn.dbconn" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
Connection con;
con=dbconn.create();
  PreparedStatement ps = con.prepareStatement("SELECT * FROM `bookshop`.`card` WHERE id='"+id+"'");

  ResultSet rs = ps.executeQuery();
  while (rs.next()) {
%>

  <embed src="books/<%= rs.getString(15) %>" width="1380px" height="620px"></embed>

<%
  }
%>

</body>
</html>