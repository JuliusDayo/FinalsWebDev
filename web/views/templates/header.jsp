<%-- 
    Document   : header
    Created on : 05 9, 21, 8:11:25 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" class="control-sidebar-animate">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="resources/css/adminlte.min.css" >
        <link rel="stylesheet" href="resources/css/bootstrap.min.css" >
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <link rel="stylesheet" href="resources/style.css">
        <link rel="stylesheet" href="resources/reg.css">
        <link href="https://unpkg.com/@popperjs/core@2">
        
        
        
         <title>Welcome</title>
    </head>
    <body class="sidebar-mini  layout-fixed layout-footer-fixed " style="height: auto;" data-scrollbar-auto-hide="panelAutoHeight">
        <div class="wrapper">
            <nav class="main-header navbar navbar-expand navbar-white navbar-light">
                <!-- Left navbar links -->
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                    </li>
                    <li class="nav-item d-none d-sm-inline-block">
                        <a href="${pageContext.request.contextPath}/Home" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item d-none d-sm-inline-block">
                        <a href="#" class="nav-link">Contact</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
                            Help
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">FAQ</a>
                            <a class="dropdown-item" href="#">Support</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Contact</a>
                        </div>
                    </li>
                </ul>

                <!-- SEARCH FORM -->
                <form class="form-inline ml-3">
                    <div class="input-group input-group-sm">
                        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                        <div class="input-group-append">
                            <button class="btn btn-navbar" type="submit">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                    </div>
                </form>

                <!-- Right navbar links -->
                <ul class="navbar-nav ml-auto">

                    <li class="nav-item">
                        <a class="nav-link"  data-slide="true" href="${pageContext.request.contextPath}/Logout" role="button"><i
                                class="fas fa-th-large"></i></a>
                    </li>
                </ul>
            </nav>
            <!-- /.navbar -->
            <!-- .content-wrapper-->
            <div class="content-wrapper background" >
                <!-- .content-->
                <section class="content-header"></section>
                <section class="content">
                    <!-- .container-fluid-->
                    <div class="container-fluid">
     