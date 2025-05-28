<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="Dbconn.dbconn"%>
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
String date=request.getParameter("time");
System.out.println(date);
String mail=request.getParameter("mail");
System.out.println(mail);
String upi=request.getParameter("upi");
System.out.println(upi);
/*String description=request.getParameter("description");
System.out.println(description);*/
String quan=request.getParameter("quantity");
System.out.println(quan);
/*String count=session.getAttribute("quan").toString();*/

int i=Integer.parseInt(quan); 

	
    Connection con;
       
       int reg=0;
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM pharmacymedical.money where  name='"+upi+"'  ");
       
       ResultSet rs=ps.executeQuery();
      
     int cout=0;
     
       while(rs.next())
       {
    
    	 
    	   
    	    cout=rs.getInt(9);  
       }   
    	   
       
    	   
    	     int a=cout+i;
       
    	     String s=String.valueOf(a);
    	    try{
    	
    	    		
    	    		Statement st=con.createStatement();
    	    		reg=st.executeUpdate("UPDATE `pharmacymedical`.money set quantity='"+s+"' where name='"+upi+"' ");
    	    		System.out.println("Success");
       
    	    		
    	    		 //*reg=ps.executeUpdate();

    	} catch (SQLException e) {
    	//TODO Auto-generated catch block
    	e.printStackTrace();
    	}
    		if(reg==1){
    			response.sendRedirect("homepage.jsp");
    		}
    		else{
    			response.sendRedirect("error.jsp");
    		}
    		
    		


    		%>
</body>
</html>