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

<%@page import="Servlet.mail1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int reg=0;
String type="delivered";
String upi=session.getAttribute("semail").toString();
String email=session.getAttribute("email").toString();
System.out.println(email);
try{ 	
Connection con1=dbconn.create();
java.sql.Statement st=con1.createStatement();
st.executeUpdate("UPDATE bookshop.card c SET status='"+type+"' where mediupi='"+upi+"' ");
st.executeUpdate("UPDATE bookshop.orderupdate o SET status='"+type+"' where mid='"+upi+"' ");
/* mail1.main(email,"Your book was delivered"); 
 */response.sendRedirect("viewproduct.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>








</body>
</html>