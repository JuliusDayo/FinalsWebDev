<jsp:include page="../templates/header.jsp" />            
<jsp:include page="../templates/sidebar.jsp"/>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                   url = "jdbc:mysql://localhost/midterm"
                   user = "root" password = ""/>
<sql:query dataSource = "${snapshot}" var = "result">
    SELECT * FROM `categories` ORDER BY category_name;
</sql:query>
<sql:query dataSource = "${snapshot}" var = "result1">
    SELECT * FROM `brands` ORDER BY brand_name;
</sql:query>
<div >         
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Add Product</h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form role="form" action="${pageContext.request.contextPath}/RegisterProduct">
            <div class="card-body">
                <div class="form-group col-sm-5">
                    <label>ID</label>
                    <input type="number" class="form-control" id="product_ID" name="product_ID" placeholder="Will set automatically if left empty" value="0" data-toggle="tooltip" data-placement="right" title="Will be set automatically if left empty">
                </div>
                <div class="form-group col-sm-5">
                    <label for="product_name">Product Name</label>
                    <input  class="form-control" name="product_name" id="product_name" required placeholder="Enter Product Name">
                </div>
                <div class="form-group col-sm-5">
                    <label>Brand</label>
                    <select class="form-control" id="brand_ID" name="brand_ID" required>
                        <option>--Select Brand--</option>
                        <c:forEach var ="row" items = "${result1.rows}">
                            <option value="<c:out value ="${row.brand_ID}"/>" ><c:out value ="${row.brand_name}"/></option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group col-sm-5">
                    <label >Category</label>
                    <select class="form-control" id="category_id" name="category_ID" required>
                        <option>--Select Category--</option>
                        <c:forEach var ="row" items = "${result.rows}">
                            <option value="<c:out value ="${row.category_ID}"/>" ><c:out value ="${row.category_name}"/></option>
                        </c:forEach>
                    </select>
                </div><div class="form-group col-sm-5">
                    <label for="product_stocks">Product Stocks</label>
                    <input type="number" class="form-control" id="product_stocks" name="product_stocks" required placeholder="Enter Product Stocks">
                </div>


                <!-- /.card-body -->

                <div class="card-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </form>


    </div>
</div>
    <jsp:include page="../templates/footer.jsp"/>