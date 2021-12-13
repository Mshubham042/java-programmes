<%-- 
    Document   : index.jsp
    Created on : 13 Dec, 2021, 12:14:00 PM
    Author     : Test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>database page</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>
    <body class="container">
        
       <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
       url="jdbc:mysql://localhost:3306/jstl?zeroDateTimeBehavior=convertToNull"  
       user="root"  password=""/>  
       
       <sql:query dataSource="${db}" var="rs">  
       SELECT * FROM jstldb; 
      </sql:query> 
       
       <table class="table table-striped mt-5 " >  
           <tr class="bg-dark" style="background-color: black; color: white">  
            <th class="text-center">Student ID</th>  
            <th>Name</th>  
            <th>Email</th>  
            <th>Password</th>  
        </tr>
       
       
       <c:forEach var="table" items="${rs.rows}">  
        <tr>  
        <td class="text-center"><c:out value="${table.id}"/></td>  
        <td><c:out value="${table.Name}"/></td>  
        <td><c:out value="${table.password}"/></td>  
        <td><c:out value="${table.username}"/></td>  
        </tr>  
</c:forEach>
    
 
        
    </body>
</html>
