<%@ page import="Dbconn.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,600);

*, *:before, *:after {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  background: #105469;
  font-family: 'Open Sans', sans-serif;
}
table {
  background: #012B39;
  border-radius: 0.25em;
  border-collapse: collapse;
  margin: 1em;
}
th {
  border-bottom: 1px solid #364043;
  color: #E2B842;
  font-size: 0.85em;
  font-weight: 600;
  padding: 0.5em 1em;
  text-align: left;
}
td {
  color: #fff;
  font-weight: 400;
  padding: 0.65em 1em;
}
.disabled td {
  color: #4F5F64;
}
tbody tr {
  transition: background 0.25s ease;
}
tbody tr:hover {
  background: #014055;
}
h2{
margin:10px 800px;
color:white;
}
h3{
margin:-10px 800px;
color:white;
}
a{
text-decoration: none;
color:white:

}
button {
  padding: 5px 10px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #04AA6D;
  border: none;
  border-radius: 15px;
  box-shadow: 0 4px #777;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 4px #777;
  transform: translateY(4px);
}



</style>
</head>
<body>
<<table>
  <thead>
    <tr>
      <th>Email
      <th>Product Name
      <th>Quantity
      <th>Price
      <th>Customer Name
      <th>Status
      <th>Track Id
      <th>Download
  </thead>
  <tbody>
  <% 
  String Email="",pname="",quan="",price="",cname="";
  String email=session.getAttribute("email").toString();
  String type="Buyed";
  Connection con;
	     con=dbconn.create();
	     PreparedStatement ps=con.prepareStatement("SELECT * FROM `bookshop`.`card` where status='"+type+"' and uemail='"+email+"'  ");

	     ResultSet rs=ps.executeQuery();
	     con=dbconn.create();
	     
	     while(rs.next())
	       {
	    	  Email=rs.getString(2);
	    	  pname=rs.getString(3);
	          quan=rs.getString(6);
	    	  price=rs.getString(7);
	       	  cname=rs.getString(8);
  %>
  
  <tr>
      <td><%=rs.getString(2) %>
      <td><%=rs.getString(3) %>
      <td><%=rs.getString(6) %>
      <td><%=rs.getString(7) %>
      <td><%=rs.getString(8) %>
      <td><%=rs.getString(13) %>
      <td><%=rs.getString(16) %>
      <td style="background: white;"><a href="download.jsp?id=<%=rs.getString(1) %>">Download<i class='fa fa-trash-alt'></i></a></td>
      <%} %>
  </tbody>
</table>

<%

session.setAttribute("emailll", Email);
session.setAttribute("pname", pname);
session.setAttribute("quan", quan);
session.setAttribute("price", price);
session.setAttribute("cname", cname);

%>
<h3>
share your experience here...
<h3>
<h2><button><a href="feedback.jsp">Feedback</a></button></h2>

</body>
</html>