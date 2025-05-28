<%@ page import="Dbconn.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%
String user=session.getAttribute("email").toString();

String id=request.getParameter("id");





try{
	Connection con=dbconn.create();
	Statement st=con.createStatement();
	st.executeUpdate("DELETE FROM bookshop.card where uemail='"+user+"' and id='"+id+"' ");
	response.sendRedirect("cart.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>