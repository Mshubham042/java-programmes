<%-- 
    Document   : checklogin
    Created on : 13 Dec, 2021, 1:58:36 PM
    Author     : Test
--%>

<%@page import="bean.login"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="mybean" class="bean.login" scope="session" />


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% 
          String email = request.getParameter("username");
          String password = request.getParameter("password");
          
          login obj = new login();
          
          
          
          if(mybean.checklogin(email, password))
          {
              HttpSession ses = request.getSession();
              ses.setAttribute("user", email);
              response.sendRedirect("Member.jsp");
//              out.println("success");
          }
          else
          {
              out.println("wrong");
          }
          
          
          
          %>
        
    </body>
</html>
