<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="Dbconn.dbconn"%>
<%@page import="java.util.*" %>
 <%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
 * { 
  font-family: 'Source Sans Pro', sans-serif; 
  margin:0;
  padding:0;  
  }
  .not-valid{
    background-color: #de606030;
  }
  #info{
    font-weight: bold;
    color:red;
  }
  form div {
    text-align: left;
    margin: 5px 3px;
    font-size: 22px;  
  }
  
  body {
    background-image: linear-gradient(to top, #09203f 0%, #537895 100%);
  }
  
  input[type="radio"] {
    margin: 4px 0px 20px -105px;
  }
  
  .gend {
    display: flex;
    margin-left: 64px;
  }
  
  .dgend {
    text-align: center;
    margin: -5px 56px 5px 4px;
  }
  
  input[type="date"] {
    font-size:16px;
    color:#252e387a;
  }
  
  input::placeholder {
    font-size:16px;
    color:#252e387a;
  }
  
  form {
    position:relative;
    width:365px;
    height:100%;
    margin:50px auto 100px;
    text-align:center;
    background:#eeeeef;
    padding:40px;
    -webkit-border-radius:40px 0 0 0;
    -moz-border-radius:40px 0 0 0;
    border-radius: 50px 7px 50px 7px;
    box-shadow: -9px -11px 0px 2px #eef1fb38, inset 10px 7px 0px 0px #a3a7b1f2;
   
  }
  
  h4 {
    font-family: 'Source Sans Pro', sans-serif;
    font-size:2em;
    font-weight:300;
    margin: -24px 13px 12px 12px;
    color:#7f8c8d;
    text-shadow:1px 1px 0px white;
  }
  
  input,textarea {
    display:block;
    width:315px;
    padding:14px;
    -webkit-border-radius:6px;
    -moz-border-radius:6px;
    border-radius:6px;
    border:0;
    margin-bottom: 20px;
    color:#7f8c8d;
    font-weight:600;
    font-size:16px;
  }
  
  input:focus {
    background:#fafafa;
  }
  textarea:focus {
    background:#fafafa;
  }
 
  
  .button {
    position: relative;
    float: left;
    width: 145px;
    margin-top: 10px;
    background: #507492;
    color: #fff;
    font-weight: 400;
    text-shadow: 1px 1px 0px #2d7baf;
    box-shadow: -7px -6px 0px #9c9c9cc4;
    -webkit-transition: all .3s ease-in-out;
    -moz-transition: all .3s ease-in-out;
    transition: all .3s ease-in-out;
    outline:none;
}
input ,textarea{
    display: block;
    width: 315px;
    padding: 14px;
    -webkit-border-radius: 6px;
    -moz-border-radius: 6px;
    border-radius: 6px;
    border: 0;
    margin-bottom: 20px;
    color: #7f8c8d;
    font-weight: 600;
    font-size: 16px;
  }  
   
  .button:hover {
   background-color:#3a5e7bdb;;
   border-bottom-right-radius: 32%;
    border-bottom-left-radius: 32%;
  } 
  
   input [type="checkbox"] {
     width:10px;
   }
  
  .button {
  cursor: pointer;
  font-weight: bold;    
  }
</style>
</head>
<body>
<a href="bill"></a>
<%HttpSession ses=request.getSession();
    String mail=ses.getAttribute("semail").toString(); 
    
    
 
 
    SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
    Date date = new Date();  
 
    String time= formatter.format(date);
    System.out.println(time); 
 %>
<form action="expenditurecalculation.jsp" method="post" name="main_form">
      <h4>Daily Update info</h4>
          <div><label for="username">Date</label></div>
      <input name="time" id="username" type="text" value="<%=time %>" placeholder="Enter name" maxlength="50" title="Name can not contain numbers">
          <div><label for="userLastname">Pharmacy Id</label></div>
      <input name="mail" id="userLastname" type="text" placeholder="Enter lastname" value="<%=mail %>" maxlength="50" title="Lastname can not contain numbers">
         
         <div><label for="userLastname">Medicine Name</label></div>
      <input name="upi" id="userLastname" type="text"  placeholder="Enter medicine name" " maxlength="50" title="Lastname can not contain numbers">
        
          <!-- <div class="dgend">Gender</div>
            <span class="gend">
              M<input type="radio" name="gender" value="M" id="male" checked="checked">
              F<input type="radio" name="gender" value="F" id="female" >      
            </span> -->
          <!-- <div><label for="userbday">Quantity</label></div>
          <textarea rows="" cols="" name="description" placeholder="write your expenditure comments"></textarea>
        -->
        <div><label for="useremail">Quantity</label></div>       
      <input name="quantity" id="useremail" type="number" placeholder="Quantity" maxlength="50">
       <input class="button" type="submit" value="Submit" name="submit">     
      </form> 
</body><script>window.onload = function(){
	  let form = document.main_form;
	  let info = document.getElementById("info");
	  let name = form.name;
	  let lastname = form.lastname;
	  let surname = form.surname;
	  let gender = form.gender;
	  let date = form.birthday;
	  let email = form.email;
	  let password = form.password;
	  let confirmPassword = form.confirmPassword;

	  
	  form.addEventListener("submit", formValidation);
	  function formValidation(){
	    let wrongFields = false;
	    for(let i=0; i<form.length; i++){
	      if(form[i].value == "" && form[i].type != 'radio'){
	        form[i].classList.add("not-valid");
	        wrongFields = true;
	      }
	      else
	        form[i].classList.remove("not-valid");        
	    }
	    if(form.password.value != form.confirmPassword.value)
	      {
	        info.innerHTML = "Passwords is not same";
	        event.preventDefault(); 
	      }
	    else
	      info.innerHTML = "";
	    if(!wrongFields)
	      alert("Thanks for registration")
	    else           
	      event.preventDefault();
	        
	  }
	  for(let i=0; i<form.length; i++){
	    form[i].onchange = function(){
	      if(this.value !="")
	        this.classList.remove("not-valid");
	      
	    }
	  }
	}</script>
</html>