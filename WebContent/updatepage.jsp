<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String pname=request.getParameter("pname");
String price=request.getParameter("price");
String cname=request.getParameter("cname");
String quantity=request.getParameter("quan");
String status=request.getParameter("status");
String mid=request.getParameter("mid");







%>
<form action="">
<input type"hidden" name="pname" value="<%=pname%>">
<input type"hidden" name="price" value="<%=price%>">
<input type"hidden" name="cname" value="<%= cname%>">
<input type"hidden" name="quan" value="<%=quantity%>">
<input type"hidden" name="status" value="<%=status%>">
<input type"hidden" name="mid" value="<%=mid%>">


<%response.sendRedirect("updateservlet");%>
</body>
</html>