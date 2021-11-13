<%-- 
    Document   : profile_page
    Created on : 11 11, 21, 11:45:42 AM
    Author     : gavin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="templates/header.jsp" />            
<jsp:include page="templates/sidebar.jsp"/>


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

        
        

        <div class="col-md-7">         
            <div class="card card-primary">

                <div class="card-header">
                    <h3 class="card-title">Change Password</h3>
                </div>

                <div class="card-body">

                    <form action="${pageContext.request.contextPath}/ChangePassword" method="post">

                        <div class="form-group col-sm-6">
                            <label>Current Password</label>
                        </div>
                        <div class="col-7">
                            <input type="password" class="form-control" name="curr_pass">
                        </div>



                        <div class="form-group col-sm-6">
                            <label>New Password</label>
                        </div>
                        <div class="col-7">
                            <input type="text" class="form-control" name="new_pass" id="new_pass">
                        </div>



                        <div class="form-group col-sm-6">
                            <label>Confirm Password</label>
                        </div>
                        <div class="col-7">
                            <input type="text" class="form-control" name="confirm_pass" id="confirm_pass" onchange="ifMatched()" value="">
                        </div>

                        <div class="card-footer">
                            <button type="submit" class="btn btn-success">Change Password</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
                    
                    <script>
                        var new_pass = document.getElementById("new_pass");
                        var confirm_pass = document.getElementById("confirm_pass");
                        
                        const ifMatched = () =>{
                            
                             if(new_pass.value !== confirm_pass.value){
                                alert('notmatched');
                             }
        
                        };
                        
                    </script>
<jsp:include page="templates/footer.jsp"/>

   
