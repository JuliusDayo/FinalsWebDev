<%-- 
    Document   : sidebar
    Created on : 05 9, 21, 8:18:46 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Main Sidebar Container -->
<style>
    .isDisabled{
        color: currentColor;
        cursor: not-allowed;
        opacity: 0.5;
        text-decoration: none;
        pointer-events: none
    }
</style>
<aside class="main-sidebar sidebar-dark-primary  navbar-olive elevation-4">
    <!-- Brand Logo -->


    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->

        <a  class="brand-link">
            <img src="logo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
            <span class="brand-text font-weight-light">3C's Grocery</span>
        </a>
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="logo.png" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="${pageContext.request.contextPath}/ProfilePage" class="d-block"><%= session.getAttribute("username")%></a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->


                <li class="nav-item has-treeview menu-open" >
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Pages
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                     <ul class="nav nav-treeview">
                    <%
                   int can_add = (int)session.getAttribute("can_add");
                   if(can_add==0){
                %>
                   
                        <li class="nav-item "  data-trigger="hover" data-toggle="popover" data-content="You Don't have permission" data-placement="top">

                            <a href="${pageContext.request.contextPath}/RegisterPage" class="nav-link disabled">
                                <i class="fas fa-dolly-flatbed"></i>
                                <p>Add Product</p>

                            </a>
                        </li>
                        <% }if(can_add==1){ %>   
                        
                        <li class="nav-item "  >

                            <a href="${pageContext.request.contextPath}/RegisterPage" class="nav-link ">
                                <i class="fas fa-dolly-flatbed"></i>
                                <p>Add Product</p>

                            </a>
                        </li>
                        <% }%>   
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/RegisterBrandCategPage" class="nav-link">
                                <i class="fas fa-book"></i>
                                <p>Add Brand and Category</p>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/Products" class="nav-link">
                                <i class="fas fa-warehouse nav-icon"></i>
                                <p>Product List</p>
                            </a>
                        </li>
                    </ul>
                </li>
                 <%
                    int role = (int) session.getAttribute("role_ID");
                    if(role==1){
                %>
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/RegisterUserPage" class="nav-link ">
                        <i class="nav-icon fas fa-th"></i>
                        <p>Users</p>
                    </a>
                </li>
                <% } %>  
                       

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
<script>
    $('.disabled').popover({
        trigger: 'focus'
    })
</script>