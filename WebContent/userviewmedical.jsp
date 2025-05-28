<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="Dbconn.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
  height:100vh;
  background-color: #4158D0;
background-image: linear-gradient(43deg, #4158D0 0%, #C850C0 46%, #FFCC70 100%);
} 
/* Styling the table */
        table {	
            border-collapse: collapse;
            margin: 25px 0;
            font-size: 0.9em;
            font-family: sans-serif;
            min-width: 400px;
/*             box-shadow: 0 0 20px rgba(0, 0, 0, 0.15); */
        }

        /* Styling the header */
        table thead tr {
            background-color: #2e3bf7;
            color: #ffffff;
            text-align: left;
        }

        /* Moving onto the table cells */
        table th,td{
            padding: 12px 15px;
        }

        /* Styling the table rows... */
        table tbody tr {
            border-bottom: 1px solid #dddddd;
        }

        table tbody tr:nth-of-type(even) {
            background-color: #f3f3f3;
        }

        table tbody tr:last-of-type {
            border-bottom: 2px solid #2e3bf7;
        }

        /* let's make the active row look different */
        table tbody tr.active-row {
            font-weight: bold;
            color: #2e3bf7;
        }

a{
text-decoration: none;
color:maroon;
}


button{
background-color: white;

}
</style>
</head>
<body>
<center style="background-color:#fff;padding:10px;width:600px;margin:auto;border-radius:20px;box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);">
        <h1>Medical names</h1>
        <table class="my-table">
            <thead>
                <tr>
                    <th>Medical Name</th>
                    <th>Medical Id</th>
                    <th>Products</th>
                </tr>
            </thead>
            <tbody>
        <%     
     Connection con;
String type="approved";

     con=dbconn.create();
     PreparedStatement ps=con.prepareStatement("SELECT * FROM `pharmacymedical`.`userreg` where status='"+type+"' ");

     ResultSet rs=ps.executeQuery();

     while(rs.next())
       {
    	  String namee=rs.getString(2);
    	  String crname=rs.getString(3);
    	  String cstatus=rs.getString(5);
    	   
     %>
            
    	  
            
            
            
                <tr>
                    <td><%=rs.getString(2) %></td>
                    <td><%=rs.getString(8) %></td>
                    <td><button><a href="addtocardpage.jsp?data=<%=rs.getString(2)%>">View producs</a></button></td>
                </tr>
                    <%} %>  
                
                      
                    </td>
                </tr>
                <!-- and so on... -->
            </tbody>
        </table>
        </center>
      
</body>
</html>