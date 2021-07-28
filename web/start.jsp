<%-- 
    Document   : start
    Created on : 26 Nov, 2020, 8:40:11 PM
    Author     : Shivnarayan Yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <jsp:include page="header.jsp"/>
    </head>
<body>

<div class="w3-bar w3-red">
    <a href="#" class="w3-bar-item w3-button w3-red"><img src="img/logo.jpeg" style="height:40px;width: 350px"></a>
    <a href="start.jsp" class="w3-bar-item w3-button w3-hide-small">Home</a>
    <a href="index.jsp" class="w3-bar-item w3-button w3-hide-small">Admin Login</a>
    <a href="userLogin.jsp" class="w3-bar-item w3-button w3-hide-small">User Login</a>
    <a href="aboutUs.jsp" class="w3-bar-item w3-button w3-hide-small">About Us</a>
    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="myFunction()">&#9776;</a>
</div>

<div id="demo" class="w3-bar-block w3-red w3-hide w3-hide-large w3-hide-medium">
    <a href="start.jsp" class="w3-bar-item w3-button">Home</a>
  <a href="index.jsp" class="w3-bar-item w3-button">Admin Login</a>
  <a href="userLogin.jsp" class="w3-bar-item w3-button">User Login</a>
  <a href="aboutUs.jsp" class="w3-bar-item w3-button">About Us</a>
  
</div> 

<div class="w3-container">
    <h1 align="center" style="color: blue;font-family: 'Monotype Corsiva';font-weight: 900;font-size: 60px"><b>Welcome To Saraswati School<b></h1>
</div>

<script>
function myFunction() {
  var x = document.getElementById("demo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}
</script>
</body>
</html>