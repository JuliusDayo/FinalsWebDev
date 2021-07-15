<%-- 
    Document   : landingpage
    Created on : 05 11, 21, 7:53:17 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>3C's Grocery</title>
<style>
   
body{
  background-image: url("bg.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  background-attachment: scroll;
}
.btn-group .button {
  background-color: #66cc66; 
  border: 1px solid green;
  color: white;
  padding: 10px 70px;
  text-align: center;
  text-decoration:none;
  display: inline-block;
  font-size: 40px;
  cursor: pointer;
  float: right;
}
.btn-group .button {border-radius: 12px;
}

.btn-group .button:not(:last-child) {
  border-right: none; 
}

.btn-group .button {
  transition-duration: 0.4s;
}

.btn-group .button:hover {
  background-color: #4CAF50;
  color: white;
}
.img-container {
        text-align: center;
</style>
</head>
<body>

<div class="btn-group">
  <img src="3C's Grocery.png" alt="3C's Grocery" width="300" height="300"/> 
  <button class="button">ABOUT US</button>
  <button class="button" onclick="window.location.href='APPLY.html'">APPLY</button>
  <button class="button" onclick="window.location.href='MEMBERSHIP.html'">MEMBERSHIP</button>
  <button class="button" onclick="window.location.href='PROMO.html'">PROMOS</button>
  <button class="button" onclick="window.location.href='views/login.jsp'">HOME</button> 
</div>
<div class="img-container"> <!-- Block parent element -->
  <img src="display1.png" alt="SHOP NOW" width="1250" height="550" class="center"/>
  </div>
</html><a href="views/login.jsp"><button>Go to Home</button></a>
</body>


