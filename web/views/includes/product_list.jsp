<jsp:include page="../templates/header.jsp" />            
<jsp:include page="../templates/sidebar.jsp"/>


<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>


<%-- 
    Document   : register
    Created on : 05 9, 21, 9:38:30 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                   url = "jdbc:mysql://localhost/midterm"
                   user = "root" password = ""/>

<sql:query dataSource = "${snapshot}" var = "result2">
    SELECT * FROM `brands` ORDER BY brand_name;
</sql:query>
<sql:query dataSource = "${snapshot}" var = "result1">
    SELECT * FROM categories ORDER BY category_name;
</sql:query>
<sql:query dataSource = "${snapshot}" var = "result">
    SELECT * FROM products inner join brands on brands.brand_ID = products.brand_ID inner join categories on categories.category_ID = products.category_ID;
</sql:query>

<div class="card">
    <div class="card-header bg-primary">
        <h3 class="card-title">Product List</h3>
        <div class="card-tools">
            <!-- Buttons, labels, and many other things can be placed here! -->
            <!-- Here is a label for example -->

        </div>
        <!-- /.card-tools -->
    </div>
    <!-- /.card-header -->
    <div class="card-body dataTables_wrapper">
        <table  id="product_table" class="cell-border display compact stripe" style="width:100%">

            <thead>
                <tr role="row">
                    <th>Product ID</th>
                    <th>Products</th>
                    <th>Products Category</th>
                    <th>Brand</th>
                    <th>Stocks</th>
                    <th>Actions</th>

                </tr>

            </thead>
            <tbody>
                <c:forEach var ="row" items = "${result.rows}">
                    <tr>
                        <td><c:out value ="${row.product_ID}"/></td>
                        <td><c:out value ="${row.product_name}"/></td>
                        <td><c:out value ="${row.category_name}"/></td>
                        <td><c:out value ="${row.brand_name}"/></td>
                        <td><c:out value ="${row.product_stocks}"/></td>
                        <td class="">
                            <% int role = (int) session.getAttribute("role_ID");%>
                            <button class="btn-success btn" type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-${row.product_ID}"
                                    <% if(role!=1){ %>
                                        disabled
                                    <% } %>
                                    ><i class="fas fa-edit" ></i></button>
                            <button class="btn-danger btn" type="button" class="btn btn-danger" data-toggle="modal" data-target="#modal-delete-${row.product_ID}"
                                    <% if(role!=1){ %>
                                        disabled
                                    <% } %>
                                    ><i class="fas fa-trash-alt" ></i></button>
                            <form action="${pageContext.request.contextPath}/EditController" type="submit">
                                <input  hidden>

                                <div class="modal fade" id="modal-${row.product_ID}">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Edit Product</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">

                                                <div class="form-group col-sm-5">

                                                    <label>ID</label>
                                                    <input type="number" class="form-control" id="product_ID" name="product_ID"  value="${row.product_ID}" data-toggle="tooltip" data-placement="right" >
                                                </div>
                                                <div class="form-group col-sm-5">
                                                    <label for="product_name">Product Name</label>
                                                    <input  class="form-control" name="product_name" id="product_name" value ="${row.product_name}" required placeholder="Enter Product Name">
                                                </div>
                                                <div class="form-group col-sm-5">
                                                    <label>Brand</label>
                                                    <select class="form-control" id="brand_ID" name="brand_ID" required>
                                                        <option>--Select Brand--</option>
                                                        <c:forEach var ="row2" items = "${result2.rows}">

                                                            <option value="<c:out value ="${row2.brand_ID}"/>" 
                                                                    <c:if test="${row2.brand_ID == row.brand_ID}">
                                                                        <c:out value="selected"/> 
                                                                    </c:if>><c:out value ="${row2.brand_name}"/></option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div class="form-group col-sm-5">
                                                    <label >Category</label>
                                                    <select class="form-control" id="category_ID" name="category_ID" required>
                                                        <option>--Select Category--</option>
                                                        <c:forEach var ="row1" items = "${result1.rows}">
                                                            <option value="<c:out value ="${row1.category_ID}"/>" 
                                                                    <c:if test="${row1.category_ID == row.category_ID}">
                                                                        <c:out value="selected"/> 
                                                                    </c:if>><c:out value ="${row1.category_name}"/></option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div class="form-group col-sm-5">
                                                    <label for="product_stocks">Product Stocks</label>
                                                    <input type="number" class="form-control" id="product_stocks" name="product_stocks" value="${row.product_stocks}" required placeholder="Enter Product Stocks">
                                                </div>
                                                <input id="product_IDcurr" name="product_IDcurr" type="number" value="${row.product_ID}" hidden >
                                            </div>
                                            <div class="modal-footer justify-content-between">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                <button type="submit"  class="btn btn-primary">Save changes</button>
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>
                                <!-- /.modal -->
                            </form>
                            <form>
                                <div class="modal fade" id="modal-delete-${row.product_ID}">
                                    <div class="modal-dialog">
                                        <div class="modal-content bg-danger">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Warning!</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <p>${row.product_name} will be permanently deleted!</p>
                                            </div>
                                            <div class="modal-footer justify-content-between">
                                                <button type="button" class="btn btn-outline-light" data-dismiss="modal">Close</button>
                                                <button class="btn-outline-light btn" value="${row.product_ID}" id="product_ID" name="product_ID" type="submit" formaction="${pageContext.request.contextPath}/DeleteController" data-toggle="tooltip" data-placement="top" title="Deleting is irreversible" >Delete</button>
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>
                                <!-- /.modal -->
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>    
            <tfoot>
                <tr role="row">
                    <th>Product ID</th>
                    <th>Products</th>
                    <th>Products Category</th>
                    <th>Brand</th>
                    <th>Stocks</th>
                    <th>Actions</th>

                </tr>


            </tfoot>

        </table>
    </div>

    <!-- /.card-body -->
    <div class="card-footer">
        The footer of the card
    </div>
    <!-- /.card-footer -->   
</div>
<!-- /.card -->
<template id="success">
    <swal-title>
        ${result_message} 
    </swal-title>
    <swal-icon type="${result_icon}" color="${result_icon}"></swal-icon>



    <swal-param name="allowEscapeKey" value="false" />
    <swal-param
        name="customClass"
        value='{ "popup": "my-popup",
        "visible${visible}}' />
</template>

<script defer="">
    Swal.fire({
        template: '#success'
    })
</script>





<jsp:include page="../templates/footer.jsp"/>



