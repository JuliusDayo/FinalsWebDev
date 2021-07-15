<%-- 
    Document   : register_brand_category
    Created on : 05 14, 21, 8:47:36 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../templates/header.jsp" />            
<jsp:include page="../templates/sidebar.jsp"/>

<div class="row">
    <div class=" col-sm-6">
        <div class="card card-primary">

            <div class="card-header">
                <h3 class="card-title">Add Brand</h3>
                <div class="card-tools">
                    <!-- Buttons, labels, and many other things can be placed here! -->
                    <!-- Here is a label for example -->
                    <span class="badge badge-primary">Label</span>
                </div>
                <!-- /.card-tools -->
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <div class="form-group">
                    <label for="product_name">Brand </label>
                    <input  class="form-control" name="product_name" id="product_name" required placeholder="Enter Brand">
                </div>
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
            <!-- /.card-footer -->
            <div class="overlay dark">
                <i class="fas fa-2x fa-sync-alt fa-spin"></i>
            </div> 
            <div class="ribbon-wrapper ribbon-xl">
                <div class="ribbon bg-danger text-lg">
                    Unavailable
                </div>
            </div>
        </div>

        <!-- /.card -->
    </div>
    <div class=" col-sm-6">
        <div class="card card-success">
            <div class="card-header">
                <h3 class="card-title">Add Category</h3>
                <div class="card-tools">
                    <!-- Buttons, labels, and many other things can be placed here! -->
                    <!-- Here is a label for example -->
                    <span class="badge badge-primary">Label</span>
                </div>
                <!-- /.card-tools -->
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <label for="product_name">Category </label>
                <input  class="form-control" name="product_name" id="product_name" required placeholder="Enter Category">
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
            <!-- /.card-footer -->
            <div class="overlay dark">
                <i class="fas fa-2x fa-sync-alt fa-spin"></i>
            </div>
            <div class="ribbon-wrapper ribbon-xl">
                <div class="ribbon bg-danger text-lg">
                    Unavailable
                </div>
            </div>
        </div>
    </div>

    <!-- /.card -->
</div>


<jsp:include page="../templates/footer.jsp"/>