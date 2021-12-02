<%-- 
    Document   : booking_detail
    Created on : 2 Dec, 2021, 2:11:01 PM
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
        <h1>Booking Detail</h1>
        
        
        <% mybean.setName(request.getParameter("name"));
                  mybean.setTotaldays(Integer.parseInt(request.getParameter("totaldays")));
               
                %>
                
                name :<%=mybean.getName() %>
                days :<%=mybean.getTotaldays() %>
                <a href="cnfrm_booking.jsp">Confirm Bokking</a>
    </body>
</html>
