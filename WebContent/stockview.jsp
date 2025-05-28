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
 <link rel="stylesheet" href="css1/bootstrap.min.css"> 


</head>
<style>
body{
background-color:#8BA6E9;
}
table{
background-color:#D7B7BC;
}
</style>

 <% String chemail=session.getAttribute("semail").toString(); %>  
<body>
<center><br><br><br>
<button type="button" class="btn btn-outline-danger" style="float:right;margin-top:-30px;margin-right:10px;" onclick="history.back()">back</button>


</center><br><br>
<div class="container">
              <div class="table-responsive-sm">  
  <table class="table table-striped">
    <thead>
      <tr>
       
        <th>Product Name</th>
         <th>Pharmacy ID</th>
        <th>Product ID</th>
       <th>Quantity</th>
        <th>Buying Amount</th>
      
       
      
        
      </tr>
    </thead>
     <%
       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `pharmacymedical`.`money` where mail='"+chemail+"' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	   int  cout=rs.getInt(10); 
    	 
   String a=rs.getString(5).substring(rs.getString(5).length()-3);
    	   System.out.println(cout);
    	
    	   
    	
    	  
       %>
    <tbody>
      <tr>
      
	 
      
        <%--  <td><%=rs.getString(1)%></td> --%>
        
        <td><%=rs.getString(3)%></td>
      
      <td><%=rs.getString(4)%></td> 
        <td><%=rs.getString(5)%></td>
    
       <td><%=rs.getString(10)%></td>
        <td><%=rs.getString(6)%></td>
    <%  session.setAttribute("up",rs.getString(5));
%>
     <!--  <td><a href="account.jsp"><button class="btn btn-primary">Account Balance</button></a> 
       --> 
      </tr>
    </tbody>
    	<%} %>
  </table>
</div>
</div>
</body>
</html>