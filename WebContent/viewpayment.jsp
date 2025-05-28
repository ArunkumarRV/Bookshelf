<%@ page import="Dbconn.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
html,
body{
  height: 100%;
}

body {
  margin: 0;
  background: #e0e5ec;
  font-family: Arial, Helvetica, sans-serif;
  font-weight: 100;
}

.container {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

table.neumorphic{
  width: 600px;
  border-spacing: 0;
  color: #212121;
  text-align: center;
  overflow: hidden;
  box-shadow: 9px 9px 16px rgba(163, 177, 198, 0.6),
  -9px -9px 16px rgba(255, 255, 255, 0.6);
}
table.neumorphic thead{
  box-shadow: 9px 9px 16px rgba(163, 177, 198, 0.6);
}
table.neumorphic th{
  padding: 7px;
}

table.neumorphic>tbody>tr>td {
  padding: 10px;
  font-size: 14px;
  position: relative;
}


table.neumorphic>tbody>tr:hover {
  padding: 20px;
  box-shadow: 9px 9px 16px rgba(163, 177, 198, 0.6),
  -9px -9px 16px rgba(255, 255, 255, 0.6);
}

table.neumorphic tr td:first-child::before {
  content: "";
  position: absolute;
  padding: 7px;
  top: 0;
  left: -5000px;
  width: 10000px;
  height: 100%;
  z-index: -10;
}

table.neumorphic td:hover::after {
  content: "";
  position: absolute;
  box-shadow: 9px 9px 16px rgba(163, 177, 198, 0.6),
  -9px -9px 16px rgba(255, 255, 255, 0.6);
  left: 0;
  top: -5000px;
  height: 10000px;
  width: 100%;
  z-index: -1;
}
</style>
</head>
<body>
  <div class="container">
      <table class="neumorphic">
	<thead>
	  <tr>
	    <th> Product Name</th>
	    <th>product Type</th>
	    <th>Number of Product</th>
	    <th>Total</th>
	  </tr>
	</thead>
	<%
	String email=session.getAttribute("email").toString();
	String pass=session.getAttribute("pass").toString();
	  int count=0;
	  
	 Connection con;
	     con=dbconn.create();
	     PreparedStatement ps=con.prepareStatement("SELECT count(*) FROM `pharmacymedical`.`card` where Email='"+email+"' and status='Add to card'  ");

	     ResultSet rs=ps.executeQuery();
	     con=dbconn.create();
	    
	     while(rs.next())
	       {
	    	 count=rs.getInt(1);
	    	 
	    	 Connection con1;
	    	     con=dbconn.create();
	    	     PreparedStatement ps1=con.prepareStatement("SELECT sum(p.price) FROM `pharmacymedical`.`card`  ");

	    	     ResultSet rs1=ps.executeQuery();
	    	     con=dbconn.create();
	    	    
	    	     while(rs1.next())
	    	       {
	    	    	 
	    	 
	    	 
	    	 int total=Integer.valueOf(rs1.getString(4));
		    	total+=total; 
	     %>
	    
	<tbody>
	  <tr>
	    <td><%=rs1.getString(3)%></td>
	    <td>Medicine</td>
	    <td>Cell 3</td>
	    <td><%=count%></td>
	    <td><%=total%></td>
	  </tr>
	
	  <%} %>
	  <%} %>
	  
	</tbody>
      </table>
    </div>
</body>
</html>