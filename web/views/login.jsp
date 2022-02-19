<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Log in</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <style>

            body{
                background-color: #00b36b;
                margin: 100px;
                padding: 100px;
            }
            .login-box{
                width: 320px;
                height: 420px;
                background: rgba(0, 0, 0, 0.5);
                color: #fff;
                top: 50%;
                left: 50%;
                position: absolute;
                transform: translate(-50%,-50%);
                box-sizing: border-box;
                padding: 70px 30px;
                font: 20px/30px Georgia, serif;
            }
            .avatar{
                width: 100px;
                height: 100px;
                border-radius: 50%;
                position: absolute;
                top: -50px;
                left: calc(50% - 50px);
            }
            h1{
                margin: 0;
                padding: 0 0 20px;
                text-align: center;
                font: 20px/30px Georgia, serif;
            }
            .login-box p{
                margin: 0;
                padding: 0;
                font-weight: bold;
            }
            .login-box input{
                width: 100%;
                margin-bottom: 20px;
            }
            .login-box input[type="text"], input[type="password"]
            {
                border: none;
                border-bottom: 1px solid #fff;
                background: transparent;
                outline: none;
                height: 40px;
                color: #00ff99;
                font-size: 16px;
            }
            .login-box input[type="submit"]
            {
                border: none;
                outline: none;
                height: 40px;
                background: #1c8adb;
                color: #fff;
                font-size: 18px;
                border-radius: 20px;
            }
            .login-box input[type="submit"]:hover
            {
                cursor: pointer;
                background: #39dc79;
                color: #000;
            }

            .login-box a{
                text-decoration: none;
                font-size: 14px;
                color: #fff;
            }
            .login-box a:hover
            {
                color: #39dc79;
            }

        </style>
    </head>
    
</head>
<body>

    <form name="Login" action="${pageContext.request.contextPath}/Login" onsubmit="return validateForm()" method="post">

        <div class="login-box">
            <img src="logo.png" class="avatar">   
            <h1>Login Here</h1>

            <label for="username"> Username </label> 
            <input type="text" input id="username" name="username"placeholder="Enter Username" required>

            <label for="password"> Password </label> 
            <input type="password" input id="password" name="password"placeholder="Enter Password" required>
            <input type="submit" input id="button" name="button" value="Submit">

        </div>

    </form>
<c:if test="${alertModal}">
    
    <div class="alert alert-danger" role="alert" <c:out default="hidden" value="no"/> />
         <c:out default="Your username and password does not match." value="${alertMessage}"/>
    </div>
    
</c:if>   

</body>
</html>



