<%-- 
    Document   : successpage
    Created on : 05 24, 21, 11:45:45 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<jsp:include page="templates/header.jsp" />            
<jsp:include page="templates/sidebar.jsp"/>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-sm-6 col align-self-center">
            <div class="cardi">

                <center><i class="fas fa-check fa-5x" style="color:#9ABC66"></i></center>

                <h1> Register Failed! </h1>
                
                <div class="card-footer">
            <a href="${pageContext.request.contextPath}/RegisterPage"><button class="btn btn-success">Go Back</button></a>
        </div>
            </div>
                
        </div>
        
    </div>
</div>

<jsp:include page="templates/footer.jsp"/>
