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
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css1/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>

</head>
<style>
.mydiv{
font-size:20px;
text-decoration:none;
float:right;
}
body{
width:90%;
margin-left:20px;
}
</style>
<div class="mydiv">
<button class="btn btn-danger" onclick="history.back()">Go back</button></a>
</div><br><br><br>
<body ng-app="" >
<h1>Search your book to Multiway</h1>
<hr>
<!-- 
book -->
<form action="roomdepartdivisor.jsp"  method="post">
<div class="choose" style="margin-left:20px;">
<h2>book:</h2><input type="checkbox" name="book" value="book" ng-model="myVara">


<div ng-show="myVara">
<label>bookname:</label>
<input type="text" name="bookname" placeholder="Enter book name">

<button type="submit">Submit</button>
</div>
</div>
</form>


<form action="roomdepartdivisor.jsp"  method="post">
<div class="choose" style="margin-left:20px;">
<h2>Location:</h2><input type="checkbox" name="location" value="location" ng-model="myVarr">
<div ng-show="myVarr">
<label>location name:</label>
<input type="text" name="locationname" placeholder="Enter location"><br><br>

<button type="submit">Submit</button>
</div> 
</div> 
</form>

<form action="roomdepartdivisor.jsp"  method="post">
<div class="choose" style="margin-left:20px;">
<h2>Author:</h2><input type="checkbox" name="aurther" value="aurther" ng-model="myVaraa">


<div ng-show="myVaraa">
<label>Author name:</label>
<input type="text" name="aurthername" placeholder="Enter aurther name">

 <button type="submit">Submit</button>
</div>
</div>
</form>



	




	
	
	
	
	

 
 
 
