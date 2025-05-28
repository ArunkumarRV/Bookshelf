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
* {
  --apple-bg-color: #f5f5f7;
  --item-size: 230px;
}

html {
  background-color: var(--apple-bg-color);
  margin: 0;
  padding: 0;
}


h3 {
  margin: 0;
  font-size: 17px;
  line-height: 1.23536;
  white-space: normal;
}

ul {
  all: unset;
  list-style: none;
}

img {
  width: auto;
  height: var(--item-size);
}

.carousel {
  scroll-padding: 0 12px;

  width: 100vw;
  display: flex;
  gap: 20px;
}

.x-slide {
  scroll-snap-type: x mandatory;
  overflow-x: auto;
}

.item {
  scroll-snap-align: start;

  background-color: white;
  flex: 0 0 auto;
  display: grid;
  place-content: center;

  box-shadow: 2px 4px 12px rgb(0 0 0 / 8%);
  overflow: hidden;
  box-sizing: border-box;
  border-radius: 18px;
  
  width: var(--item-size);
  padding: 30px;
}

.content-info {
  height: 8.76471rem;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  white-space: normal;
  padding: 0 30px;
}
button{
background-color:skyblue;
cursor: pointer;
padding:10px 2px;
border: threedshadow;
border-radius:10px;
}
input{
padding:10px 20px;
background-color:#00BFFF;
border:none;
cursor: pointer;

}
</style>
</head>
<body>
<%
String email=session.getAttribute("email").toString();
String type="approved";
 String name=request .getParameter("data");
System.out.println("NAMe"+name);
  
     
  
 Connection con;
     con=dbconn.create();
     PreparedStatement ps=con.prepareStatement("SELECT * FROM `pharmacymedical`.`money` where status1='"+type+"' ");

     ResultSet rs=ps.executeQuery();
     con=dbconn.create();
    
     while(rs.next())
       {
    	 
    	   
     %>

    
    	   
    





  <ul class="carousel x-slide">
  <li class="item">
   
    <div class="content-info">
      <h3 class="content-title">
      <%=rs.getString(3) %>
      </h3>
       <div class="content-image">
 <p style="text-align: center;"><img src="Local/<%=rs.getString(7) %>" weight="50px;" height="50px;"></p>
    </div>
    
      <div class="content-price">
     
       <h3>Price:<h4><%=rs.getString(5) %></h4><h3>
      </div>
    </div>
<a href="addtocardservlet.jsp?pname=<%=rs.getString(3)%>&&price=<%=rs.getString(5)%>&&email=<%=email%>"><button>Add card</button></a>
    
  </li>
 
  <%} %>
  
<a href="viewpayment.jsp" ><input type="submit"></a> 


</body>
</html>