<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Dbconn.dbconn"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Shop</title>
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
<form action="roomdepartdivisor.jsp" method="post">
<div class="choose" style="margin-left:20px;">
<h2>book:</h2><input type="checkbox" name="book" value="book" ng-model="myVara">
<div ng-show="myVara">
<label>bookname:</label>
<input type="text" name="bookname" placeholder="Enter book name">
<button type="submit">Submit</button>
</div>
</div>
</form>

<form action="roomdepartdivisor.jsp" method="post">
<div class="choose" style="margin-left:20px;">
<h2>Location:</h2><input type="checkbox" name="location" value="location" ng-model="myVarr">
<div ng-show="myVarr">
<label>location name:</label>
<input type="text" name="locationname" placeholder="Enter location">
<br><br>
<button type="submit">Submit</button>
</div> 
</div> 
</form>

<form action="roomdepartdivisor.jsp" method="post">
<div class="choose" style="margin-left:20px;">
<h2>Author:</h2><input type="checkbox" name="aurther" value="aurther" ng-model="myVaraa">
<div ng-show="myVaraa">
<label>Author name:</label>
<input type="text" name="aurthername" placeholder="Enter author name">
<button type="submit">Submit</button>
</div>
</div>
</form>

<%
    Connection con = null;
    HttpSession ssession = request.getSession(); // Declare session only once
    try {
        con = dbconn.create();

        String location = request.getParameter("location");
        String book = request.getParameter("book");
        String author = request.getParameter("aurther");

        // Handle Location Search
        if ("location".equals(location)) {
            String locationname = request.getParameter("locationname");
            session.setAttribute("search", locationname);
            %>
            </br></br>
            <h1>Book Shop</h1></br>
            <h3>Location: <%= locationname.toUpperCase() %></h3>
            </br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Book Name</th>
                        <th scope="col">Author Name</th>
                        <th scope="col">Category</th>
                        <th scope="col">Location</th>
                        <th scope="col">View Product</th>
                    </tr>
                </thead>
                <tbody>
                <%
                PreparedStatement ps = con.prepareStatement("SELECT * FROM bookshop.addbooks WHERE location LIKE ? AND status='approved'");
                ps.setString(1, "%" + locationname + "%");
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    %>
                    <tr>
                        <td><p class="card-text"><%= rs.getString(1) %></p></td>
                        <td><p class="card-text"><%= rs.getString(3) %></p></td>
                        <td><p class="card-text"><%= rs.getString(8) %></p></td>
                        <td><p class="card-text"><%= rs.getString(11) %></p></td>
                        <td><p class="card-text"><%= rs.getString(10) %></p></td>
                        <td><a href="productsear.jsp?id=<%= rs.getString(6) %>">View book<i class='fa fa-trash-alt'></i></a></td>
                    </tr>
                    <% 
                }
                rs.close();
                ps.close();
                %>
                </tbody>
            </table>
            <% 
        }

        // Handle Book Search
        if ("book".equals(book)) {
            String bookname = request.getParameter("bookname");
            session.setAttribute("search", bookname);
            %>
            </br></br>
            <h1>Book Shop</h1></br>
            <h3>Bookname: <%= bookname.toUpperCase() %></h3>
            </br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Book Name</th>
                        <th scope="col">Author Name</th>
                        <th scope="col">Category</th>
                        <th scope="col">Price</th>
                        <th scope="col">View Product</th>
                    </tr>
                </thead>
                <tbody>
                <%
                PreparedStatement ps = con.prepareStatement("SELECT * FROM bookshop.addbooks WHERE pname LIKE ? AND status='approved'");
                ps.setString(1, "%" + bookname + "%");
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    %>
                    <tr>
                        <td><p class="card-text"><%= rs.getString(1) %></p></td>
                        <td><p class="card-text"><%= rs.getString(3) %></p></td>
                        <td><p class="card-text"><%= rs.getString(8) %></p></td>
                        <td><p class="card-text"><%= rs.getString(11) %></p></td>
                        <td><p class="card-text"><%= rs.getString(9) %></p></td>
                        <td><a href="productsear.jsp?id=<%= rs.getString(6) %>">View book<i class='fa fa-trash-alt'></i></a></td>
                    </tr>
                    <% 
                }
                rs.close();
                ps.close();
                %>
                </tbody>
            </table>
            <% 
        }

        // Handle Author Search
        if ("aurther".equals(author)) {
            String authorname = request.getParameter("aurthername");
            session.setAttribute("search", authorname);
            %>
            </br></br>
            <h1>Book Shop</h1></br>
            <h3>Author Name: <%= authorname.toUpperCase() %></h3>
            </br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Book Name</th>
                        <th scope="col">Author Name</th>
                        <th scope="col">Category</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">View Product</th>
                    </tr>
                </thead>
                <tbody>
                <%
                PreparedStatement ps = con.prepareStatement("SELECT * FROM bookshop.addbooks WHERE author LIKE ? AND status='approved'");
                ps.setString(1, "%" + authorname + "%");
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    %>
                    <tr>
                        <td><p class="card-text"><%= rs.getString(1) %></p></td>
                        <td><p class="card-text"><%= rs.getString(3) %></p></td>
                        <td><p class="card-text"><%= rs.getString(8) %></p></td>
                        <td><p class="card-text"><%= rs.getString(11) %></p></td>
                        <td><p class="card-text"><%= rs.getString(9) %></p></td>
                        <td><a href="productsear.jsp?id=<%= rs.getString(6) %>">View book<i class='fa fa-trash-alt'></i></a></td>
                    </tr>
                    <% 
                }
                rs.close();
                ps.close();
                %>
                </tbody>
            </table>
            <% 
        }

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // Close the connection
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>
</body>
</html>
 