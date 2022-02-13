<%-- 
    Document   : home
    Created on : 05 9, 21, 9:41:25 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
    %>
        
            
                <jsp:include page="templates/header.jsp" />            
                <jsp:include page="templates/sidebar.jsp"/>
                <jsp:include page="../views/includes/dashboard.jsp"/>
                <jsp:include page="templates/footer.jsp"/>

            
       
    