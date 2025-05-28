<%@ page import="Dbconn.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
 <%@ page import="java.util.UUID"%> 
 <%@ page import="javax.swing.*"%>
<%String cardnum=request.getParameter("card-number");
String expirymonth=request.getParameter("expiry-month");
String expiryyear=request.getParameter("expiry-year");
String cvv=request.getParameter("cvv");
String name=request.getParameter("name");
String rand=request.getParameter("rand");
String id=session.getAttribute("proid").toString();
String userid=session.getAttribute("prouserid").toString();
String order=session.getAttribute("proorder").toString();
String status="Buyed"; %>
<%UUID uuid=UUID.randomUUID(); %>
<%
   


try{
	Connection con=dbconn.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE bookshop.card c SET status='"+status+"',orderid='"+order+"',username='"+name+"',cardnumber='"+cardnum+"',exdate='"+expiryyear+"',exmonth='"+expirymonth+"',cvv='"+cvv+"',track='"+rand+"' where uemail='"+userid+"' and status='Added To Cart' ");
	

JFrame f=new JFrame();  
JOptionPane.showMessageDialog(f,"Pleace note your track Id --->"+rand); ;  
	
	
	response.sendRedirect("usermainpage.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>

