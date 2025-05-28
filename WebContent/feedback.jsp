<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
* {
	 box-sizing: border-box;
}
 .container {
	 width: 100vw;
	 height: 100vh;
	 display: flex;
	 justify-content: center;
	 align-items: center;
	 flex-direction: column;
	 background: whitesmoke;
}
 .container h2 {
	 font-size: 2em;
	 text-transform: uppercase;
	 color: #141a1c;
	 animation: 1s fadeInFromBottom forwards ease-in-out;
}
 .buttons {
	 padding: 20px 15px;
	 border-radius: 5px;
	 background: #dfe6e9;
	 display: flex;
	 justify-content: space-evenly;
	 align-items: center;
	 animation: 1s fadeInFromBottom forwards ease-in-out;
	 animation-delay: 500ms;
	 opacity: 0;
}
 .buttons input[type="checkbox"] {
	 display: none;
}
 .buttons input[type="checkbox"]:disabled + label {
	 opacity: 0.5;
}
 .buttons input[type="checkbox"]:checked + label {
	 background: #3d5159;
	 color: #fff;
}
 .buttons input[type="checkbox"]:disabled:checked + label {
	 opacity: 1;
}
 .buttons input[type="checkbox"]:not(:disabled):not(:checked) + label:hover {
	 background: whitesmoke;
	 transform: scale(0.98);
}
 .buttons input[type="checkbox"] + label {
	 margin: 0 20px;
	 padding: 10px 15px;
	 user-select: none;
	 background: #fff;
	 color: #3d5159;
	 border-radius: 3px;
	 font-size: 18px;
	 cursor: pointer;
	 transition: all 200ms ease-in-out;
	 border: 2px solid transparent;
}
 @keyframes fadeInFromBottom {
	 from {
		 transform: translateY(30px);
		 opacity: 0;
	}
	 to {
		 transform: translateY(0px);
		 opacity: 1;
	}
}
 @keyframes fadeInFromBottomLittle {
	 from {
		 transform: translateY(15px);
		 opacity: 0;
	}
	 to {
		 transform: translateY(0px);
		 opacity: 1;
	}
}
 small {
	 float: right;
	 margin-top: 15px;
	 text-align: right;
	 transition: all 200ms ease-in-out;
	 cursor: pointer;
	 color: #3d5159;
}
 small.hidden {
	 opacity: 0;
}
 .ball {
	 border-radius: 15px;
	 background: #3d5159;
	 width: 25px;
	 height: 25px;
	 display: flex;
	 justify-content: center;
	 align-items: center;
	 font-size: 18px;
	 color: white;
	 cursor: pointer;
	 transition: all 200ms ease-in-out;
	 position: absolute;
	 top: -10px;
	 right: -10px;
}
 .ball.hidden {
	 opacity: 0;
}
 .ball:hover {
	 background: #33434a;
}
 


</style>
</head>
<body>
<form action="feedbackk.jsp" method="post">
<div class="container">
  <h2> How is it? </h2>
  <div>
    <div class="buttons">
    
      
        <input type="radio" name="feed" value="bad">
      <label for="n1"> <p> &#128530;</p>Bad </label>

        <input type="radio" name="feed" value="Average">
      <label for="n2"> <p> &#128533;</p>As usual </label>

         <input type="radio" name="feed" value="Awesome">
      <label for="n3"> <p> &#128536;</p> Awesome </label>
    </div>
    
    
    

    <small class="hidden"> Reset </small>
  </div>
  <button>Submit</button>
</div>

</form>
<script>

let buttons = document.querySelectorAll('.buttons > input')

for(var i=0; i<buttons.length; i++)
{
  let button = buttons[i];
  
  button.addEventListener('click', () => {
    var label = document.querySelector(`[for="${button.getAttribute('id')}"]`);
    var labels = document.querySelectorAll('label');
    
    document.querySelector('.ball').classList.remove('hidden')
    
    button.setAttribute('disabled', true);
    
    for(var l=0; l<labels.length; l++)
    {
      var c = labels[l];
      
      if ( c.innerHTML !== label.innerHTML ) {
        document.querySelector(`#${c.getAttribute('for')}`).disabled = true
      }
    }
  })
}

document.querySelector('.ball').addEventListener('click', () => {
  document.querySelector('.ball').classList.add('hidden')
  
  for(var i=0; i<buttons.length; i++) {
    buttons[i].removeAttribute('disabled');
    buttons[i].checked = false;
  }
})

</script>
</body>
</html>