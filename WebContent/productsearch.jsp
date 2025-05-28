<%@ page import="Dbconn.dbconn" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.OutputStream" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/home.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <% 
    String pname = "";
    int price = 0;
    int quant = 0;
    String pics = "";
    String pid = "";
    String sellermail = "";

    String umail = (String) session.getAttribute("email");
    Connection con = null;
    ResultSet rs1 = null;
    ResultSet rs = null;
    
    if (umail != null) {
        try {
            con = dbconn.create();
            
            // Fetch the cart count
            String countQuery = "SELECT count(*) FROM `bookshop`.`card` WHERE uemail = ? AND status = 'Added to cart'";
            PreparedStatement ps1 = con.prepareStatement(countQuery);
            ps1.setString(1, umail);
            rs1 = ps1.executeQuery();

            int count = 0;
            if (rs1.next()) {
                count = rs1.getInt(1);
            }
        %>
            <header style="overflow:hidden;position:sticky;clear:both;">
                <nav class="navbar navbar-default" role="navigation">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="cart.jsp">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                                    <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                                </svg>
                                <span style="color:red;"><%=count%></span> cart
                            </a>
                        </li>
                        <li><a href="myorder.jsp">Buyed Product</a></li>
                       <!--  <li class="dropdown">
                            <a href="cookingInstruction.jsp">Cook By Yourself</a>
                        </li> -->
                    </ul>
                </nav>
            </header>
    <% 
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs1 != null) try { rs1.close(); } catch (SQLException e) { e.printStackTrace(); }
            if (con != null) try { con.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    }

    String search = (String) session.getAttribute("search");
    String id = (String) session.getAttribute("upiidproduct");

    if (search != null && id != null) {
        try {
            con = dbconn.create();
            
            // Search for products
            String searchQuery = "SELECT * FROM `bookshop`.`addbooks` WHERE filename = ? AND (location = ? OR pname = ? OR author = ?)";
            PreparedStatement ps = con.prepareStatement(searchQuery);
            ps.setString(1, id);
            ps.setString(2, search);
            ps.setString(3, search);
            ps.setString(4, search);

            rs = ps.executeQuery();

            while (rs.next()) {
                pname = rs.getString("pname"); // Update based on actual column names
                quant = rs.getInt("quantity"); // Update based on actual column names
                price = rs.getInt("money"); // Update based on actual column names
                pics = rs.getString("filename"); // Update based on actual column names
                pid = rs.getString("id"); // Update based on actual column names
                sellermail = rs.getString("semail");
    %>
                <div class="container" style="overflow:hidden;">
                    <div class="col-xs-12 col-md-6">
                        <div class="prod-info-main prod-wrap clearfix">
                            <div class="row">
                                <div class="col-md-7 col-sm-12 col-xs-12">
                                    <div class="col-md-5 col-sm-12 col-xs-12">
                                        <div class="product-image" style="height:200px;overflow:hidden;">
                                        <%--     <img src="books/<%=pics%>" width="90" height="150" alt="<%=pname%>"> --%>
                                  <%--       <a href="books/<%=pics%>" target="_blank">View PDF: <%=pname%></a> --%>
               <embed src="books/<%=pics%>" type="application/pdf" class="pdf-container" width="100%" height="100%">



                       
                                        
                                        </div>
                                    </div>
                                    <div class="product-deatil">
                                        <h5 class="name">
                                            <a href="#"><span>Product Name :</span> <%=pname%></a><br><br>
                                            <a href="#"><span>Quantity :</span> <%=quant%></a><br><br>
                                            <a href="#"><span>Product Upload Date :</span> <%=rs.getString("date")%></a> <!-- Update column name based on actual schema -->
                                        </h5>
                                        <p class="price-container">
                                            <span><i class="fa fa-rupee" style="font-size:20px;color:red"></i> <%=price%></span>
                                        </p>
                                        <span class="tag1"></span>
                                    </div>
                                   <!--  <div class="description">
                                        <p>A Short product description here</p>
                                    </div> -->
                                    <div class="product-info smart-form">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <a href="adcart.jsp?id=<%=pid%>&pname=<%=pname%>&price=<%=price%>&umail=<%=umail%>&quan=<%=quant%>&upi=<%=id%>&seller=<%=sellermail %>" class="btn btn-primary">Add to cart</a>
                                            
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
    <% 
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
            if (con != null) try { con.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    }
    %>
</div>
</body>
<script type="text/javascript">
const searchFocus = document.getElementById('search-focus');
const keys = [
  { keyCode: 'AltLeft', isTriggered: false },
  { keyCode: 'ControlLeft', isTriggered: false },
];

window.addEventListener('keydown', (e) => {
  keys.forEach((obj) => {
    if (obj.keyCode === e.code) {
      obj.isTriggered = true;
    }
  });

  const shortcutTriggered = keys.filter((obj) => obj.isTriggered).length === keys.length;

  if (shortcutTriggered) {
    searchFocus.focus();
  }
});

window.addEventListener('keyup', (e) => {
  keys.forEach((obj) => {
    if (obj.keyCode === e.code) {
      obj.isTriggered = false;
    }
  });
});
</script>
</html>
 