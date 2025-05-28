<%@ page import="Dbconn.dbconn" %>
    <%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
 <%@ page import="java.util.UUID"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Insert title here</title>
<style>

body{
background-image:url("image/img11.jpg");
background-size:cover;
}



table,td,th {
  border: 2px solid black;
  
}
table {
  border-collapse: collapse;
  width: 90%;
}

td {
  text-align: center;
 height: 40px;
}
th{
 height: 30px;
 color: #2700ff;
}

a{
    text-decoration:none;
color:deeppink;
font-weight:bold;
font-size:20px;
}</style>

</head>
<body>
<table>
<center>
<div class="back">
<button class="btn btn-primary" onclick="history.back()">Back</button>
</div>
</center>
<thead>
<% 
String userid=session.getAttribute("email").toString();
System.out.println("userid "+userid);
int ftotal=0;
int sno=0;

%>
<% 
String ttotal="";
try{
	Connection con=dbconn.create();
	Statement st=con.createStatement();
	ResultSet rs1=st.executeQuery("SELECT sum(totalprice) FROM `bookshop`.`card` where uemail='"+userid+"' and status='Added to cart'  ");
	
	while(rs1.next())
	{
	ttotal=rs1.getString(1);
		
	}
}
catch(Exception e){
	
}

%>
<%UUID uuid=UUID.randomUUID(); %>
<tr>
<th scope="col" Style="background-color:green;">Total: <%out.println(ttotal);   %></th>
<%--   <%if(ftotal>0){	 %><th scope="col"><a href="proceedtoorder.jsp?id=<%=ftotal%>&&user=<%=userid%>&&uid=<%=uuid%>">Proceed to order</a></th><%} %> 
 --%> </tr>
</thead>
<thead>
<tr>
<th scope="col">Product name</th>
<th scope="col">Quantity</th>
<th scope="col">price</th>

<th scope="col">Sub Total</th>
<th scope="col">ProductId</th>
<th scope="col">Image</th>

<th scope="col">Remove</th>
</tr>
</thead>
<tbody>
<%
String pname="",productname="";
try{
Connection con=dbconn.create();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("SELECT * FROM `bookshop`.`card` where uemail='"+userid+"' and status='Added to cart'");
while(rs.next())
	
{
	
	pname=rs.getString(3);
	
	
	
%>

<tr>


<td><%=pname%></td>
<td><a href="indecaction.jsp?id=<%=rs.getString(1)%>&quantity=inc"><i class="fa fa-plus-square"></i>
</a><%=rs.getString(6)%><a href="indecaction.jsp?id=<%=rs.getString(1)%>&quantity=dec"><i class="fa fa-minus-square"></i></a></td>
<td><i class="fa fa-inr"></i><%=rs.getString(5) %></td>
<td><%=rs.getString(7) %></td>
<td><%=rs.getString(4) %></td>
<% 


Statement st4=con.createStatement();
ResultSet rs4=st4.executeQuery("SELECT * FROM `bookshop`.`card` where uemail='"+userid+"' and status='Added to cart' ");
while(rs4.next())
	
{
	
	productname=rs4.getString(3);
	String value=rs4.getString(7);
	ftotal=Integer.valueOf(value);
	System.out.println("ftotal   "+ftotal);
%>

 <td><img class="card-img-top" src="books/<%=rs4.getString(15) %>" width="60" height="100" alt="<%= productname%>"></td> 
<%}


pname=rs.getString(3);
System.out.println("javaa  "+pname);
%>
<td><a href="removefromcart.jsp?id=<%=rs.getString(1) %>">Remove<i class='fa fa-trash-alt'></i></a></td>
</tr>
<%}
}


catch(Exception e)
{ 
System.out.println(e);
}
%>

</tbody>
</table>
<BR><br>
<center><button style="border-radius:20px;"><%if(ftotal>0){	 %><th scope="col"><a href="proceedorder.jsp?id=<%=ftotal%>&&user=<%=userid%>&&uid=<%=uuid%>&&pname=<%=pname%>">Proceed to order</a></th><%} %> 
</button></center>
</body>
</html>