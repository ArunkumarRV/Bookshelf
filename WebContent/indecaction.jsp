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
</head>
<% String userid=session.getAttribute("email").toString();
String id=request.getParameter("id");
String indec=request.getParameter("quantity");
int price=0;
int total=0;
int quantity=0;
int final_total=0; 
int a,b,c;
try{
	
	Connection con=dbconn.create();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from `bookshop`.`card` where uemail='"+userid+"' and id='"+id+"'");
	while(rs.next()){
		price=rs.getInt(5);
		total=rs.getInt(7);
		quantity=rs.getInt(6);
		
	}
	if(quantity==1 && indec.equals("dec"))
	response.sendRedirect("cart.jsp");
	else if(quantity !=1 && indec.equals("dec")){
		total=total-price;
		quantity=quantity-1;
		st.executeUpdate("UPDATE bookshop.card c SET totalprice='"+total+"', quantity='"+quantity+"' where uemail='"+userid+"' and id='"+id+"'");
		response.sendRedirect("cart.jsp");
	
		System.out.println("quantityyy  "+quantity );
		session.setAttribute("quantity",quantity);

		
		
		
		
		
	}
	else{
		total=total+price;
		quantity=quantity+1;
		st.executeUpdate("UPDATE bookshop.card c SET totalprice='"+total+"', quantity='"+quantity+"' where uemail='"+userid+"' and id='"+id+"'");
		response.sendRedirect("cart.jsp");
		
		
	System.out.println("quantityyyy  "+quantity );
	}
}
catch(Exception e){
	System.out.println(e);
}

session.setAttribute("quantity",quantity);
%>
<body>

</body>
</html>