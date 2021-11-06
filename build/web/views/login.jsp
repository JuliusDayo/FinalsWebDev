<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Log in</title>
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
<body>
           
           <form action="${pageContext.request.contextPath}/Login" method="post">
           
           <div class="login-box">
           <img src="logo.png" class="avatar">   
           <h1>Login Here</h1>
           
           <label for="username"> Username </label> 
	   <input type="text" input id="username" name="username"placeholder="Enter Username">
	   
	   <label for="password"> Password </label> 
	   <input type="password" input id="password" name="password"placeholder="Enter Password">
	   <input type="submit" input id="button" name="button" value="Submit">
           <a href="changepass.jsp"> Change password </a>
	   </div>
            
        </form>
    </body>
</html>
