<%-- 
    Document   : profile_page
    Created on : 11 11, 21, 11:45:42 AM
    Author     : gavin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            }

            .userpage {
                margin-top: 5%;
                margin-left: 250px;
                margin-right: 250px;
                margin-bottom: 2%;
                padding: 5%; 
                background-color: #1ff068;
                text-align: justify;
            }
        </style>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

        <title>Profile Page</title>
    </head>
    <body>
        <div class="col-md-7">         
            <div class="card card-primary">

                <div class="card-header">
                    <h3 class="card-title">Change Password</h3>
                </div>

                <div class="card-body">

                    <form>

                        <div class="form-group col-sm-6">
                            <label>Current Password</label>
                        </div>
                        <div class="col-7">
                            <input type="password" class="form-control" >
                        </div>



                        <div class="form-group col-sm-6">
                            <label>New Password</label>
                        </div>
                        <div class="col-7">
                            <input type="text" class="form-control" >
                        </div>



                        <div class="form-group col-sm-6">
                            <label>Confirm Password</label>
                        </div>
                        <div class="col-7">
                            <input type="text" class="form-control" >
                        </div>

                        <div class="card-footer">
                            <button type="submit" class="btn btn-success">Change Password</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>


    </body>
</html>
