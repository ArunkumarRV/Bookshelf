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
<title>Feedbacks!</title>

<style>
tabel{
height:70%;

}



</style>
</head>
<body>

    <body>
        <p style=color:red;>feedback</p>

       <!-- Create Table 
                border attribute => to make table border
                style width 100% => to make table width full screen
       -->
        <table border="2"  style="width: 80%;">
           
            <!-- Table Caption -->
            <caption>Members Data</caption>
            
            <!-- Table Head -->
            <thead>
                <tr>
                    <th>Book Name</th>
                    <th>Feedback Emoji</th>
                    <th>Email</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Customer Name</th>
                </tr>

            </thead>
   
            
            
            
           
            <!-- Table body -->
            <tbody>
                <!-- First Row -->
                         
   <%          Connection con=(Connection) dbconn.create();
		boolean log = false;
		
	
		String  s="";
				
			PreparedStatement ps=con.prepareStatement("SELECT * FROM `bookshop`.`feedback` ");
			 ResultSet rs=ps.executeQuery();
		     con=dbconn.create();
		    
		     while(rs.next())
		       {
		
		String emojj=rs.getString(2);



     %>
            
                <tr>
                    <td ><%=rs.getString(4) %></td>
                    <%if(emojj.equals("Awesome"))
                    {
                    	 
                       s=String.valueOf(128536);
                    }
                    
                    if(emojj.equals("Average"))
                    {
                    	 
                       s=String.valueOf(128527);
                    }
                    if(emojj.equals("bad"))
                    {
                    	 
                       s=String.valueOf(128545);
                    }
                    
                    
                    
                    
                    %>
                    <td><span style='font-size:50px;'>  &#<%=s %>; <br><%=emojj%></span></td>
                    </td>
                    <td><%=rs.getString(3) %> </td>
                    <td><%=rs.getString(5) %></td>
                    <td><%=rs.getString(6) %></td>
                    <td><%=rs.getString(7) %></td>
                </tr>

            <%} %>
        </table>
        
    </body>
</body>
</html>