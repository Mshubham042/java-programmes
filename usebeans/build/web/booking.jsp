<%-- 
    Document   : booking
    Created on : 2 Dec, 2021, 2:05:56 PM
    Author     : Test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome to Booking page</h1>
        
        <form action="booking_detail.jsp">
            <table>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="name" /></td>
                </tr>
                <tr>
                    <td>Days</td>
                     <td>
                         <select name="totaldays">
                             <option value="1">1</option>
                             <option value="2">2</option>
                             <option value="3">3</option>
                             <option value="4">4</option>
                        </select>
                     </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="submit" name="book" />
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
