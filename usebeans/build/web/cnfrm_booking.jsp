<%-- 
    Document   : cnfrm_booking
    Created on : 2 Dec, 2021, 2:34:43 PM
    Author     : Test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="mybean" class="hotel.hotel_data" scope="session" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Confirmed</h1>
         name :<%=mybean.getName() %>
                days :<%=mybean.getTotaldays() %>
               
    </body>
</html>
