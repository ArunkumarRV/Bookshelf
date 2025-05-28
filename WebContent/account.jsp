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
<link rel="stylesheet" href="css/account.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

</head>
<%

String id=session.getAttribute("up").toString();;
System.out.println(id);
%>

<%String chemail=session.getAttribute("semail").toString(); %>

<style>
body{
background-color:#8BA6E9;
}
table{
background-color:#D7B7BC;
}
</style>
	 
<body>
<div class="dashboardContainer">
  <div class="menu">
    <div class="title">
    
  <%	String amount="";

	 Connection d = dbconn.create();
	 PreparedStatement p = d.prepareStatement("SELECT * FROM `moneymanagement`.`money` where  upi='"+id+"'");
	 System.out.println(p);
	 ResultSet rp = p.executeQuery();
	
		while (rp.next()){
					
			
			
			amount=rp.getString(6);
			System.out.println(amount);
		}
									
	%> 
    
      <div class="imgHolder">
       <!--  <img src="https://i.imgrpost.com/imgr/2017/11/17/001-money.png" alt="001-money.png" border="0"> -->
      </div>
    <!--   <h3>CharityBank</h3> -->
    </div>
    <%
    String a=id.substring((id.length()-3));%>
    <div class="profile">
      
      <div class="details">
        <%=chemail %> <br> <span>ID: XXX<%=a %></span>
      </div>
    </div>
  
  </div>
  <div class="info">
    <div class="header">
      <h4>Personal Account</h4>
     
    </div>
   
    <div class="firstRow">
      <div class="elemfirst" id="first">
        <h5>ACCOUNT DETAILS</h5>
        <p><strong>ACCOUNT HOLDER</strong><br><%=chemail %></p>
        <p><strong>ACCOUNT NO</strong><br> XXX-XXX-XXX-XXX</p>
        <!-- <p><strong>ACCOUNT TYPE</strong><br> Savings Account</p> -->
        <p></p>
      </div>
      <div class="elemfirst">
        <h5  style="margin-top:10px">BALANCE ( in Indian Rupees  )</h5>
        <div id="balance" ><i class="fa fa-rupee-sign"></i> Rs.<%=amount %></div>

      </div>
    </div>

  </div>
</div>
</body>
</html>