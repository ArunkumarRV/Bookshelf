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
ol.progtrckr {
    margin: 0;
    padding: 0;
    list-style-type none;
}

ol.progtrckr li {
    display: inline-block;
    text-align: center;
    line-height: 3.5em;
}

ol.progtrckr[data-progtrckr-steps="2"] li { width: 49%; }
ol.progtrckr[data-progtrckr-steps="3"] li { width: 33%; }
ol.progtrckr[data-progtrckr-steps="4"] li { width: 24%; }
ol.progtrckr[data-progtrckr-steps="5"] li { width: 19%; }
ol.progtrckr[data-progtrckr-steps="6"] li { width: 16%; }
ol.progtrckr[data-progtrckr-steps="7"] li { width: 14%; }
ol.progtrckr[data-progtrckr-steps="8"] li { width: 12%; }
ol.progtrckr[data-progtrckr-steps="9"] li { width: 11%; }

ol.progtrckr li.progtrckr-done {
    color: black;
    border-bottom: 4px solid yellowgreen;
}
ol.progtrckr li.progtrckr-todo {
    color: silver; 
    border-bottom: 4px solid silver;
}

ol.progtrckr li:after {
    content: "\00a0\00a0";
}
ol.progtrckr li:before {
    position: relative;
    bottom: -2.5em;
    float: left;
    left: 50%;
    line-height: 1em;
}
ol.progtrckr li.progtrckr-done:before {
    content: "\2713";
    color: white;
    background-color: yellowgreen;
    height: 2.2em;
    width: 2.2em;
    line-height: 2.2em;
    border: none;
    border-radius: 2.2em;
}
ol.progtrckr li.progtrckr-todo:before {
    content: "\039F";
    color: silver;
    background-color: blue;
    font-size: 2.2em;
    bottom: -1.2em;
}

body{

background-image: url("images/123.jpg");

background-size:cover;

  background-attachment: fixed;

}

</style>
</head>



<body>
 
<%
String trackid=request.getParameter("tid");

System.out.println(trackid);

String Status="";
Connection con=(Connection) dbconn.create();
boolean log = false;



		
	PreparedStatement ps=con.prepareStatement("SELECT * FROM `bookshop`.`card` where track='"+trackid+"'  ");
	 ResultSet rs=ps.executeQuery();
     con=dbconn.create();
    
     while(rs.next())
       {

 Status=rs.getString(13);


%>
<%} %>

<%
String O="progtrckr-todo",s="progtrckr-todo",d="progtrckr-todo";


if(Status.equals("Ordered"))
{
	
O="progtrckr-done";

}

if(Status.equals("orderforward"))
{
	
s="progtrckr-done";
O="progtrckr-done";
}

if(Status.equals("delivered"))
{
	
d="progtrckr-done";
s="progtrckr-done";
O="progtrckr-done";

}
	
	%>











<ol class="progtrckr" data-progtrckr-steps="4">
    <li class="<%=O%>">Order Processing</li><!--
 
 --><li class="<%=s%>">Shipped</li><!--
 --><li class="<%=d%>">Delivered</li>
</ol>
</body>
</html>