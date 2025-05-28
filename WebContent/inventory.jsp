<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import=" Dbconn.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
table {
 border-collapse: collapse;
  width: 100%;
}
th,
td {
  padding: 1rem 2rem;
  text-align: center;
  border-bottom: 1px solid #ddd;
}
th {
  font-weight: normal;
  font-size: .875rem;
  color: #666;
  background: #eee;
  /*  以下２行で見出しを固定  */
  position: sticky;
  top: 0;
}
img {
  width: 80px;
  display: block;
  margin: 0 auto;
  margin-bottom: .5rem;
}

/* レスポンシブ対応 */
@media(max-width: 500px) {
  .heading {
    display: none;
  }
  td {
    display: block;
  }
  .car-name {
    background: #eee;
  }
}

h1 {
  text-align: center;
  font-size: 2.5rem;
  font-family: 'El Messiri', sans-serif;
}



</style>
</head>
<body>

<h1>Inventory Details</h1>
<table>
  <tr class="heading">
    <th>Image</th>
    <th>Price</th>

    <th>Author Name</th>
    <th>Stock</th>
  </tr>
  
  
       <%
       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `bookshop`.`money` ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	String stock=rs.getString(9);
    	
         if(stock.equals("1"))
         {
  %>
  
  
  
  
  
  
  <tr>
    <td class="car-name">
       <img src="Local/<%=rs.getString(6)%>" alt="">
    <%=rs.getString(3) %>
    </td>
    <td><%=rs.getString(5) %></td>
    <td><%=rs.getString(8) %></td>
    <td><%=rs.getString(9) %></td>

  </tr>
  <%} %>
<%} %> 
 

</table>


</body>
</html>