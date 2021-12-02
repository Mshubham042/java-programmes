<%-- 
    Document   : login
    Created on : 27 Nov, 2021, 10:43:53 AM
    Author     : test
--%>

<%@page import="myconnection.database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <%
            String user = request.getParameter("user");
            String upass = request.getParameter("upwd");
            String submit = request.getParameter("submitbtn");
 
            
            database dbobj = new database();
            
        if(submit!=null)
          {
                  
            if(dbobj.checkuser(user, upass))
            {
                HttpSession s = request.getSession();
                s.setAttribute("sname", user);
                response.sendRedirect("Member.jsp");
//                out.println("corerct");
            }
            else
            {
                out.println("wrong");
            }
          }   
            
            
            %>
    
        <form action="login.jsp" name="login">
            <table border="1px solid border" class="mt-5 border border-dark row col-md-3 m-5 " >
            <tr>
                <td class="">Username</td>
                <td><input class="form-control mt-3" type="text" name="user"</td>
            </tr>
             <tr>
                <td>Password</td>
                <td><input class="form-control mt-3" type="password" name="upwd"</td>
            </tr>
            <tr>
                <td><input class="form-control btn btn-success mt-3" type="submit" name="submitbtn" value="login"></td>
                <td><input class="form-control btn btn-info mt-3" type="reset" name="resettbtn" value="Reset"></td>
            </tr>
        </table>
        </form>
    </body>
</html>
