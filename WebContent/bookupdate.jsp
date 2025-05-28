<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Dbconn.dbconn" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <head>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
    <title>Add your Books</title>
    
    <style>
    html {
    height: 100%;
}
body{
    background-image: linear-gradient(rgb(148, 73, 233),rgb(99, 174, 248));
    background-image: -webkit-linear-gradient(rgb(148,73,233),rgb(99,174,248));
    background-image: -moz-linear-gradient(rgb(148,73,233),rgb(99,174,248));
    background-attachment: fixed;
    background-repeat: no-repeat;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}

.container{
    position: absolute;
    top: 350px;
    left: 800px;
    margin-top: -330px;
    margin-left: -500px;
    width: 550px;
}

.tab {
  overflow: hidden;
  border: 0px solid rgb(255, 255, 255);
  background-color: #ffffff79;
  width: fit-content;
  border-radius: 5px 5px 0 0;
}


.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}


.tab button:hover {
  background-color: rgb(255, 255, 255);
}


.tab button.active {
  background-color: whitesmoke;
}


.tabcontent {
  padding: 6px 120px;
  border: 0px solid rgb(255, 255, 255);
  border-radius: 0 5px 5px 5px;
  background-color: white;
}

.transfer-icon{
    font-size: 3em;
    color: rgb(120, 60, 231);
    text-align: center;
}


input,select {
    width: 300px;
    padding-left: 30px;
    border: 1px solid blueviolet;
    border-radius: 5px 5px 5px 5px;
    height: 50px;
}


input[type=number]::-webkit-inner-spin-button, 
input[type=number]::-webkit-outer-spin-button { 
  -webkit-appearance: none; 
  margin: 0; 
}

input:focus {
    outline:none;
}
select:focus {
    outline:none;
}

.input-icon{
    position: absolute;
    left: 10px;
    top: calc(50% - 0.5em); 
    color: blueviolet;
    font-size: 20px;
}

.input-wrapper{
    position: relative;
    padding: 4px;
}

.button-wrapper{
    text-align: center;
    padding: 20px;
}

.send {
    background-color: blueviolet; 
    border: 2px solid blueviolet;
    border-radius: 5px 5px 5px 5px;
    color: white;
    padding: 5px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 25px;
    position: relative;
}

.send:hover {
    background-color: white; 
    border: 2px solid blueviolet;
    border-radius: 5px 5px 5px 5px;
    color: blueviolet;
    padding: 5px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 25px;
}</style>
    </head>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
</head>
<body ng-app="">
    <% HttpSession ses = request.getSession();
    String mail = ses.getAttribute("semail").toString(); 
    
    SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
    Date date = new Date();  
    String time = formatter.format(date);
    %>
    <div class="container">
        <div class="tab">
            <button class="tablinks active" id="toggle-transfer">Update Your Books</button>
        </div>
        <div id="transfer" class="tabcontent">
            <h3 class="transfer-icon"><i class="fa fa-vcard"></i></h3>
            <form action="moneyupdateservlet" method="post" enctype="multipart/form-data">
                <div class="input-wrapper">
                    <input type="text" step="1" id="stuff" value="<%= time %>" name="time" placeholder="Current Time" required>
                    <label for="stuff" class="fa fa-clock input-icon"></label>
                </div>

                <!-- <div class="input-wrapper">
                    <select name="ptype" id="ptype" style="width:335px">
                        <option value="">Choose Product Type:</option>
                        <option value="new">New Product</option>
                        <option value="old">Old Product</option>
                    </select>
                    <label for="ptype" class="fa fa-cube input-icon"></label>
                </div> -->

                <div class="input-wrapper">
                    <input type="text" id="name" name="name" placeholder="Enter Book Name" required>
                    <label for="name" class="fa fa-cube input-icon"></label>
                </div>

                <div class="input-wrapper">
                    <select name="category" id="category" style="width:335px">
                        <option value="">Choose Book Category:</option>
                        <option value="adventure">Adventure</option>
                        <option value="mystery">Mystery</option>
                        <option value="thriller">Thriller</option>
                        <option value="drama">Drama</option>
                    </select>
                    <label for="category" class="fa fa-tags input-icon"></label>
                </div>

                <div class="input-wrapper">
                    <input type="text" id="location" name="location" placeholder="Location" required>
                    <label for="location" class="fa fa-map-marker input-icon"></label>
                </div>

                <div class="input-wrapper">
                    <input type="text" id="author" name="author" placeholder="Enter Author Name" required>
                    <label for="author" class="fa fa-user input-icon"></label>
                </div>

                <div class="input-wrapper">
                    <input type="number" min="10" value="<%= mail %>" name="upi" step="1" id="upi" placeholder="Enter Product ID" required>
                    <label for="upi" class="fa fa-id-badge input-icon"></label>
                </div>

                <div class="input-wrapper">
                    <input type="number" min="1" step="1" name="quantity" max="100000000" id="quantity" placeholder="Product Quantity" required>
                    <label for="quantity" class="fa fa-sort-numeric-asc input-icon"></label>
                </div>

                <div class="input-wrapper">
                    <input type="number" min="1" step="1" name="money" max="100000000" id="money" placeholder="Product Amount" required>
                    <label for="money" class="fa fa-dollar input-icon"></label>
                </div>

                <div class="form-group">
                    <label>Upload PDF</label>
                    <input type="file" class="form-control" name="books" accept=".pdf" required>
                </div>
					
					<button type="submit">Submit</button>
					
              <!--   <center>
                    <button id="submit" name="submit" class="send">Submit</button>
                </center> -->
            </form>
        </div>
    </div>
    <script type='text/javascript'>
        // Your existing JavaScript code
        function preview_image(event)
  {
    var reader = new FileReader();
    reader.onload = function()
    {
      var output = document.getElementById('output_image');
      output.src = reader.result;
    }
    reader.readAsDataURL(event.target.files[0]);
  }
    </script>
</body>
</html>
