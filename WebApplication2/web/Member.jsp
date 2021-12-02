<%-- 
    Document   : Member
    Created on : 27 Nov, 2021, 11:29:24 AM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Member page</title>
    </head>
    <body>
        <h1>Welcome Member</h1>
        <%
            HttpSession s = request.getSession();
            String logoutuser = request.getParameter("lgbtn");
            
           
            
            
            String username = s.getAttribute("sname").toString();
            if(username == null)
            {
                response.sendRedirect("login.jsp");
            }
            out.println("Hello : "+username+"" );
            
             if(logoutuser != null)
            {
                s.invalidate();
                response.sendRedirect("login.jsp");
//                out.println("logout");
               
            }
            
            %>
            <form action="Member.jsp">
            <input type="submit" name="lgbtn" value="logout">
            </form>
            
            
    </body>
</html>
