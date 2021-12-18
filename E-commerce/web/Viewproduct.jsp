<%-- 
    Document   : Viewproduct
    Created on : 13 Dec, 2021, 2:48:55 PM
    Author     : Test
--%>

<%@page import="java.util.*"%>
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
         
        <div class="row">
            
            <div class="col-md-3">
                <h1>Product Name</h1>
            </div>
            <div class="col-md-3">
                <h1>Price</h1>
            </div>
            <div class="col-md-3">
                <h1>Detail</h1>
            </div>
                <div class="col-md-3">
                <h1>Color</h1>
            </div>
<!--                 <div class="col-md-2">
                <h1>Image</h1>
            </div>
                 <div class="col-md-2">
                <h1>Type</h1>
            </div>-->
            
            
           <%
               
              List<Map<String,List<List>>> demo = new ArrayList<Map<String,List<List>>>();
           
              Map<String, List<List>> requiredata = new HashMap<String, List<List>>();
              
              demo = myproduct.getproduct();
              
              requiredata =demo.get(0); 
            %>
              <div class="col-md-3" >
                  <h3><%=requiredata.get("product")%></h3>
              </div>
                   <div class="col-md-3" >
                  <h3><%=requiredata.get("Price")%></h3>
                </div>
            <% 

                  
             
             
                  %>
            </div>
           
    </body>
</html>
