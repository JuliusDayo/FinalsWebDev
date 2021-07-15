<%-- 
    Document   : dashboard
    Created on : 05 9, 21, 11:52:43 AM
    Author     : user
--%>
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
    select count(*) as products from products;
</sql:query>
<div class="row">
    <div class="col-md-4 col-sm-6 col-12">
        <div class="small-box bg-info">
            <div class="inner">
                <h3><c:forEach var ="row" items = "${result.rows}"><c:out value="${row.products}"/></c:forEach></h3>
                <p>Number of products</p>
            </div>
            <div class="icon">
                <i class="fas fa-shopping-cart"></i>
            </div>
            <a href="#" class="small-box-footer">
                More info <i class="fas fa-arrow-circle-right"></i>
            </a>

        </div>
    </div>
    <div class="col-md-4 col-sm-6 col-12">
        <div class="info-box bg-success">
            <span class="info-box-icon"><i class="far fa-thumbs-up"></i></span>
            <div class="info-box-content">
                <span class="info-box-text">Likes</span>
                <span class="info-box-number">41,410</span>
                <div class="progress">
                    <div class="progress-bar" style="width: 70%"></div>
                </div>
                <span class="progress-description">
                    70% Increase in 30 Days
                </span>
            </div>
        </div>
    </div>
    <div class="col-md-4 cold-sm-6 col-12">
        <div class="info-box bg-gradient-warning">
            <span class="info-box-icon"><i class="far fa-calendar-alt"></i></span>
            <div class="info-box-content">
                <span class="info-box-text">Events</span>
                <span class="info-box-number">41,410</span>
                <div class="progress">
                    <div class="progress-bar" style="width: 70%"></div>
                </div>
                <span class="progress-description">
                    70% Increase in 30 Days
                </span>
            </div>
        </div>
    </div>
</div>

    <div class="row">
         <div class="col-sm-6">
            <div class="card card-danger">
                <div class="card-header">
                    <h3 class="card-title">Product Sales</h3>

                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
                    </div>
                </div>
                <div class="card-body">
                    <canvas id="pieChart" style="height:230px; min-height:230px"></canvas>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>
        <div class="col-sm-6">
            <div class="card">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="resources/images/loreal.jpg" alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100 img-fluid" src="resources/images/bfresh.png" alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="resources/images/nestle.jpg" alt="Third slide">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>

    </div>
<jsp:include page="../templates/footer.jsp"/>


