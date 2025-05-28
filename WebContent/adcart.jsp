<%@ page import="Dbconn.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>


<%@ page import="java.io.IOException"%>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.annotation.WebServlet"%>
<%@ page import="javax.servlet.http.HttpServlet"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 
String pid=request.getParameter("id");
String pname=request.getParameter("pname");
String price=request.getParameter("price");
System.out.println(price+"price");
String umail=request.getParameter("umail");
String quan=request.getParameter("quan");
String upi=request.getParameter("upi");
String seller=request.getParameter("seller");



		/* cartbean cb=new cartbean();
	
		cb.setProductid(pid);
		cb.setProduct(pname);
		cb.setActualcost(price);
		cb.setUsermail(umail);
	
		
		
		
		
		Inter r=new Imple();
		int m=r.cart(cb); */
		
		
		
		
		int reg=0;
		 
		 Connection con= (Connection) dbconn.create();
		 
		 		try {
		 			
		 			PreparedStatement ps=(PreparedStatement) con.prepareStatement("INSERT INTO `bookshop`.`card` VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		 				
		 				ps.setString(1,umail);
		 				ps.setString(2,pname);
		 				ps.setString(3,pid);
		 				ps.setString(4, price);
		 				ps.setString(5, "1");
		 				ps.setString(6, price);
		 				ps.setString(7, "");
		 				ps.setString(8, "");
		 				ps.setString(9, "");
		 				ps.setString(10, "");
		 				ps.setString(11,"");
		 				ps.setString(12, "Added to cart");
		 				ps.setString(13, ""); 
		 				ps.setString(14, upi);
		 				ps.setString(15, " ");
		 				ps.setString(16, " ");
		 				ps.setString(17, seller);
		 				System.out.println("success");
		 			
		 				
		 				reg=ps.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(reg==1){
			response.sendRedirect("productsearch.jsp");
			}
		else{
			response.sendRedirect("error1.jsp");
		}
		
%>
</body>
</html>