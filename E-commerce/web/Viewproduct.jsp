<%-- 
    Document   : Viewproduct
    Created on : 13 Dec, 2021, 2:48:55 PM
    Author     : Test
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<jsp:useBean id="mybean" class="bean.login" scope="session" />
<jsp:useBean id="myproduct" class="bean.product" scope="session" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="container">
           <%
             ArrayList<String> myprod = new ArrayList<String>(); 
             
             myprod = myproduct.getproduct();
             
             for(String p : myprod )
             {
                 %>
                 <h4> <% out.println(p);%></h4> 
            <%     
             }
             
             %>
    </body>
</html>
