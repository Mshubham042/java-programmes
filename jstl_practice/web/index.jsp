<%-- 
    Document   : index
    Created on : 13 Dec, 2021, 11:09:01 AM
    Author     : Test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--c set is use to declare variable in jstl-->
        
        <c:set var="abc" value="test" scope="session"> </c:set> 
        <h1><c:out value="${abc}" ></c:out> </h1>
        
        
        <!--comparing String value-->
        <c:if  test = "${abc == 'test'}" >
            <p>correct</p>
        </c:if>
            
         <!--comparing int with if-->   
         <c:set var = "salary" scope = "session" value = "${2000*2}"/>
      <c:if test = "${salary > 2000}">
         <p>My salary is:  <c:out value = "${salary}"/><p>
      </c:if>  
             
            <!--array declaration--> 
             <c:set var="arr" value="${[1,2,3,4]}" ></c:set>
             <c:out value="${arr}"> </c:out>
             </br>
             <c:forEach var="data" items="${arr}">
                 ${data} </br>
             </c:forEach>  
                 
            
            <c:url value="/index1.jsp" var="completeURL">  
             <c:param name="trackingId" value="786"/>  
             <c:param name="user" value="Nakul"/> 
           
             
            </c:url>  
            <!--we can print data directly placing it inside $ {}-->     
            ${completeURL}
            
            
            
           
            
        <!--here cout is used to print variable value we have to use $ {} }-->
    </body>
</html>
