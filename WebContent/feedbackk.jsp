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
</head>
<body>
<%
System.out.println("1");
String feed=request.getParameter("feed");
System.out.println("    "+feed);
 /* System.out.println(first);
String second=request.getParameter("feed");
System.out.println(second);

String third=request.getParameter("third");
System.out.println(third);  */
String email=session.getAttribute("emailll").toString();
String pname=session.getAttribute("pname").toString();
String quan=session.getAttribute("quan").toString();
String price=session.getAttribute("price").toString();
String cname=session.getAttribute("cname").toString(); 

int reg=0;
try
{
	 Connection con=dbconn.create();
	 PreparedStatement ps=con.prepareStatement("INSERT INTO bookshop.feedback VALUES(id,?,?,?,?,?,?)");
	 ps.setString(1,feed);
	 ps.setString(2,email);
	 ps.setString(3,pname);
	 ps.setString(4,quan);
	 ps.setString(5,price);
	 ps.setString(6,cname);
	 
	

		reg=ps.executeUpdate();

} catch (SQLException e) {
//TODO Auto-generated catch block
e.printStackTrace();
}
if(reg==1){
	response.sendRedirect("usermainpage.jsp");
}
else{
	response.sendRedirect("error.jsp");
}




%>
</body>
</html>