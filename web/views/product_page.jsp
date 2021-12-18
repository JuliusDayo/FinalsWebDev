<%-- 
    Document   : product_page
    Created on : 05 12, 21, 9:07:01 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        
<% response.setHeader("Cache-Control","no-cache"); 
response.setHeader("Cache-Control","no-store"); 
response.setDateHeader("Expires", 0); %>
                <jsp:include page="templates/header.jsp" />            
                <jsp:include page="templates/sidebar.jsp"/>
                <jsp:include page="includes/product_list.jsp"/>
                <jsp:include page="templates/footer.jsp"/>

            
       