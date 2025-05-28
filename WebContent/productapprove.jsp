<%@ page import="Dbconn.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%
String id=request.getParameter("name");
String upi=request.getParameter("data");

/* 
String type="Request"; */
String status="approved";
try{
	Connection con=dbconn.create();
	Statement st=con.createStatement();
/* 	st.executeUpdate("UPDATE bookshop.addbooks set status1='"+status+"' where status='"+type+"' and upi='"+upi+"' "); */

	st.executeUpdate("UPDATE bookshop.addbooks SET status='"+status+"' where upi='"+upi+"' ");

	response.sendRedirect("adminproductapprove.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>