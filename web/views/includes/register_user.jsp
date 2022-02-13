<%-- 
    Document   : register_user
    Created on : 06 23, 21, 10:52:52 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="../templates/header.jsp" />            
<jsp:include page="../templates/sidebar.jsp"/>


<div class="col-md-7">         
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Add User</h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <div class="card-body">
            <form role="form" action="${pageContext.request.contextPath}/RegisterUser" method="post" id="register">
                <div class="row">
                    <div class="form-group col-sm-4">
                        <label>First Name</label>
                        <input class="form-control" type="text" id="first_name" name="first_name" required>
                    </div>
                    <div class="form-group col-sm-4">
                        <label>Middle Name</label>
                        <input class="form-control" type="text" id="middle_name" name="middle_name" required>
                    </div>
                    <div class="form-group col-sm-4">
                        <label>Last Name</label>
                        <input class="form-control" type="text" id="last_name" name="last_name" required>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-sm-6">

                        <label for="username">Username</label>
                        <input class="form-control" type="text" id="username" name="username" required>
                    </div>
                    <div class="form-group col-sm-6">
                        <label>Password</label>
                        <input class="form-control" type="text" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                    </div>  
                </div>
                
                <div class="row">
                    <div class="form-group col-sm-6">
                        <label>User Role</label>
                        <select class="form-control" id="role" name="role">
                            <option value="1">Manager</option>
                            <option value="2">Staff</option>
                        </select>
                    </div>
                    <div class="form-group col-sm-6">
                        <label>Allowed user to:</label><br>
                        <input class="col-sm-1" type='hidden' id='hadd' name='cbadd' value="0">
                        <input class="col-sm-1" type='checkbox' id='cbadd' name='cbadd' value="1" disabled="true">Add
                        <input class="col-sm-1" type='hidden' id='hedit' name='cbedit' value="0">
                        <input class="col-sm-1" type='checkbox' id='cbedit' name='cbedit' value="1" disabled="true">Edit
                        <input class="col-sm-1" type='hidden' id='hdelete' name='cbdelete' value="0">
                        <input class="col-sm-1" type='checkbox' id='cbdelete' name='cbdelete' value="1" disabled="true">Delete
                    </div>
                </div>

                <div class="card-footer">
                    <button class="btn btn-primary">Add</button>
                </div>
            </form>
        </div>
    </div>

</div>
<script type='text/javascript'>
$(document).ready(function(){
    $('#role').on('change', function() {
    var selectedVal = $(this).find(':selected').val(); 
        if(selectedVal === "2"){
            $( "#cbadd" ).prop( "disabled", false );
            $( "#cbedit" ).prop( "disabled", false );
            $( "#cbdelete" ).prop( "disabled", false );
        } else {
            $( "#cbadd" ).prop( "disabled", true );
            $( "#cbedit" ).prop( "disabled", true );
            $( "#cbdelete" ).prop( "disabled", true );
        }
    });
});
</script>
<script>
$(document).ready(function(){
    var queue = [];
    function checking(id){
        queue.push(id);
        if(queue.lenght >=2){
            queue[0].checked = false;
            queue.shift();
        }
    });
});
</script>

<jsp:include page="../templates/footer.jsp"/>