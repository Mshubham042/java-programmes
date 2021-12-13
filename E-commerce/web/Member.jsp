<%-- 
    Document   : Member
    Created on : 13 Dec, 2021, 2:19:29 PM
    Author     : Test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="container">
        
        <div class="row mt-5">
        <h1>Hello <%  
                       HttpSession ses = request.getSession();
                       String mail = ses.getAttribute("user").toString(); 
                       out.println(mail);
                         %> </h1>
        </div>
    </body>
</html>
