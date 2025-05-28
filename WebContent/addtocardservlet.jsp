<%@ page import="Dbconn.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String name=request.getParameter("pname");
String price=request.getParameter("price");
String email=request.getParameter("email");




System.out.println("name"+name);
System.out.println(price);
System.out.println(name);


int reg=0;
	Connection con=(Connection) dbconn.create();
	
	try {
		
			
			PreparedStatement ps=(PreparedStatement)con.prepareStatement("INSERT INTO pharmacymedical.card VALUES(id,?,?,?,?,?,?)");
			ps.setString(1, email);
			ps.setString(2, name);
			ps.setString(3, price);
			ps.setString(4, "Add to card");
			ps.setString(5, "");
			ps.setString(6, "");
		
			
			System.out.println("sucssess");
			
			reg=ps.executeUpdate();

} catch (SQLException e) {
//TODO Auto-generated catch block
e.printStackTrace();
}
	
	if(reg==1){
		response.sendRedirect("addtocardpage.jsp");
	}
	else{
		response.sendRedirect("error.jsp");
	}
	



%>
</body>
</html>