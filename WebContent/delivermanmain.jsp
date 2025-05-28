<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
* {
  padding: 0;
  margin: 0;
}

body {
  box-sizing: border-box;
}

.container {
  width: 100%;
  height: 100%;
  position: absolute;
  display: flex;
  justify-content: space-evenly;
  align-items: center;
  background: #000;
  flex-direction: column;
}

.btn,
.btn2 {
  width: 7.3rem;
  height: 2rem;
  color: teal;
  background-color: transparent;
  border: none;
  font-size: 2rem;
  font-weight: 700;
  display: flex;
  cursor: pointer;
  justify-content: space-between;
  align-items: center;
}

.circle__box {
  width: 22px;
  height: 22px;
  margin: 6% 1%;
  position: relative;
}

.circle__wrapper {
  width: 50%;
  height: 100%;
  position: absolute;
  top: 0;
  overflow: hidden;
}

.circle__wrapper--right {
  right: 0px;
}

.circle__wrapper--left {
  left: 0;
}

.circle__whole {
  width: 155%;
  height: 74%;
  border: 2px solid transparent;
  border-radius: 50%;
  position: absolute;
  top: 0;
  transform: rotate(-135deg);
}

.circle__right {
  border-top: 2px solid teal;
  border-right: 2px solid teal;
  right: 1px;
}

.circle__left {
  border-bottom: 2px solid teal;
  border-left: 2px solid teal;
  left: 1px;
}

@keyframes circleRight {
  0% {
    transform: rotate(-135deg);
  }

  50%,
  100% {
    transform: rotate(45deg);
  }
}

@keyframes circleLeft {
  0%,
  50% {
    transform: rotate(-135deg);
  }

  100% {
    -webkit-transform: rotate(45deg);
  }
}

.btn2 {
  flex-direction: column;
  justify-content: space-around;
}

.line {
  height: 0;
  width: 0;
  border-bottom: 1px solid white;
  animation-fill-mode: forwards;
}

.btn2:hover > .line {
  width: 100px;
  transition: width 0.3s linear;
}



</style>
</head>
<body>
<div class="container">
  <button class="btn" id="btn" onmouseover="circle()" onmouseleave="stopcircle()"><a href="viewproduct.jsp">View Order Item</a>
    <div class="circle__box">
      <div class="circle__wrapper circle__wrapper--right">
        <div class="circle__whole circle__right" id="circle_right"></div>
      </div>
      <div class="circle__wrapper circle__wrapper--left">
        <div class="circle__whole circle__left" id="circle_left"></div>
      </div>
    </div>
  </button>

  <button class="btn2"><a href="staffmain.jsp">Logout</a>
    <div class="line"></div>
  </button>

</div>
<script>
function circle() {
	  document.getElementById("circle_right").style.animation =
	    "circleRight 1s linear forwards";
	  document.getElementById("circle_left").style.animation =
	    "circleLeft 1s linear forwards";
	}

	function stopcircle() {
	  document.getElementById("circle_right").style.animation = "none";
	  document.getElementById("circle_left").style.animation = "none";
	}



</script>
</body>
</html>