<%-- 
    Document   : landingpage
    Created on : 05 11, 21, 7:53:17 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <% response.setHeader("Cache-Control", "no-cache");
            response.setHeader("Cache-Control", "no-store");
            response.setDateHeader("Expires", 0);%>
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
            .btn-group .button {
                border-radius: 12px;
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

            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

        </head>
        <body>

            <nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
                <img class="navbar-brand" src="logo.png" alt="3C's Grocery" width="50" height="50"/> 
                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                    <ul class="navbar-nav mr-auto">

                        <li class="nav-item">     
                            <a class="nav-link" onclick="window.location.href = 'views/login.jsp'">HOME</a> 
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">ABOUT US</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" onclick="window.location.href = 'APPLY.html'">APPLY</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" onclick="window.location.href = 'MEMBERSHIP.html'">MEMBERSHIP</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" onclick="window.location.href = 'PROMO.html'">PROMOS</a>
                        </li>

                    </ul>
                </div>
            </nav>
            <div class="img-container"> <!-- Block parent element -->
                <img src="displaygif.GIF" alt="SHOP NOW" width="1150" height="450" class="center"/>
            </div>
    </html><a href="views/login.jsp"><button>Go to Home</button></a>
</body>


