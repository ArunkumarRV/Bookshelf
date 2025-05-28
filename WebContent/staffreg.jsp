<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Bookshop Registration</title>
    <link rel="stylesheet" href="css1/bootstrap.min.css">
    <link rel="stylesheet" href="css1/font-awesome.min1.css">
    <style>
        body {
            background-image: url("images/43.jpeg");
            background-size: cover;
            color: white;
        }
        .container {
            margin-top: 20px;
        }
        .card {
            padding: 20px;
            background-color: #333;
            color: #fff;
            margin: 0 auto;
            width: 38em;
            margin-bottom: 25px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        #output_image {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
    <div class="container">
        <h3 style="font-weight: bold; text-align: center; margin-top: 10px;">New Bookshop Register Here...!!!</h3><br>
        <form method="post" action="SlregServlet" enctype="multipart/form-data">
            <div class="row">
                <div class="card">
                    <div class="form-group">
                        <label for="team" style="color:#fff;">Choose Team:</label>
                        <!-- Uncomment and use this select if you need it -->
                        <!--
                        <select name="team" class="form-control" id="team">
                            <option value="TeamA">Team A</option>
                            <option value="TeamB">Team B</option>
                            <option value="TeamC">Team C</option>
                            <option value="TeamD">Team D</option>
                        </select>
                        -->
                    </div>
                    <div class="form-group">
                        <label for="full_name" style="color:#fff;">Bookshop Name:</label>
                        <input type="text" class="form-control" id="full_name" placeholder="Enter Full Name" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="email" style="color:#fff;">Email:</label>
                        <input type="email" class="form-control" id="email" placeholder="Enter Email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="mobile" style="color:#fff;">Mobile:</label>
                        <input type="text" class="form-control" id="mobile" placeholder="Enter contact No" name="mobile" required>
                    </div>
                    <div class="form-group">
                        <label for="upi" style="color:#fff;">Create your UPI Id:</label>
                        <input type="text" class="form-control" id="upi" placeholder="Enter UPI id" name="upi" required>
                    </div>
                    <div class="form-group">
                        <label for="password1" style="color:#fff;">Password:</label>
                        <input type="password" class="form-control" id="password1" placeholder="Enter Password" name="psw" required>
                    </div>
                    <div class="form-group">
                        <label for="password2" style="color:#fff;">Re-Enter Password:</label>
                        <input type="password" class="form-control" id="password2" placeholder="Confirm Password" name="cpsw" required>
                    </div>
                    <div class="form-group">
                        <label for="location" style="color:#fff;">Location:</label>
                        <input type="text" class="form-control" id="location" placeholder="Enter Location" name="location" required>
                    </div>
                    <div class="form-group">
                        <label for="photo" style="color:#fff;">Upload Your Shop Photo:</label>
                        <input type="file" name="photo" accept="image/*" onchange="preview_image(event)" required>
                    </div>
                    <div class="form-group">
                        <label style="color:#fff;">Picture Here!!!</label><br>
                        <img src="" id="output_image" height="200px">
                    </div>
                    <center>
                        <button id="submit" name="donator_register" class="btn btn-primary btn-block" style="width:50%;" onclick="return Validate()">Submit</button>
                    </center><br>
                </div>
            </div>
            <hr>
        </form>
    </div>

    <script type='text/javascript'>
        function preview_image(event) {
            var reader = new FileReader();
            reader.onload = function() {
                var output = document.getElementById('output_image');
                output.src = reader.result;
            }
            reader.readAsDataURL(event.target.files[0]);
        }
    </script>

    <script>
        window.onload = function () {
            document.getElementById("password1").onchange = validatePassword;
            document.getElementById("password2").onchange = validatePassword;
        }

        function validatePassword() {
            var pass1 = document.getElementById("password1").value;
            var pass2 = document.getElementById("password2").value;
            if (pass1 != pass2) {
                document.getElementById("password2").setCustomValidity("Passwords don't match");
            } else {
                document.getElementById("password2").setCustomValidity('');
            }
        }
    </script>
</body>
</html>
