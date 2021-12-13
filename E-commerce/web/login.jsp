<%-- 
    Document   : login
    Created on : 13 Dec, 2021, 1:51:06 PM
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
    <body>
        
           <div class="formdata mt-5">     
                <div class="row col-md-10">
                    <div class="col-md-3 " > </div>
                <div class="col-md-6 head mt-2  ">
                    <h2 class="text-center " style="background-color: black ; color: white">User Login</h2>
                </div>
                </div>
                
           <form action="checklogin.jsp" method="post">      
             <div class="row col-md-10">    
              <div class="col-md-3"></div>
             <div class="mb-3 col-md-5 ">
            <label class="form-label mt-2 p-2">Username</label>
          <input type="text" name="username" class="form-control"  placeholder="">
           </div>
              
             </div> 
           <div class="row col-md-10"> 
               <div class="col-md-3"></div>
        <div class="mb-3 col-md-5">
          <label for="formGroupExampleInput2" class="form-label p-2">Password</label>
          <input type="password" name="password" class="form-control "  placeholder="">
          
        </div>
             </div>
        <div class="row col-md-10 mt-3"> 
         <div class="col-md-3"></div> 
         <div class="col-md-2">
           <input type="submit" class="form-control btn btn-success  " name="login" value="login">
         </div>
         <div class="col-md-1"></div>
         <div class="col-md-2">
             <a href="user_registration.jsp" ><p class="form-control btn btn-info">Sign Up</p></a>
         </div> 
        </div> 
   </form>
        </div>   
        
    </body>
</html>
