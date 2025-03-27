<%-- 
taglib directive
is used when we want to use other tag library in our jsp page.
such as jstl (jsp standard tag library) or custom library created by users.

prefix mentioned to get all jstl elements used by given character here used 'c'
can use any character

uri mentioned to use core jstl other also available
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page errorPage="errorpg.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Taglib Directive Tutorial </h1>
        <c:set var="name" value="TechSoft India"></c:set>
        <c:out value="${name}"></c:out>
        <c:if test="${3 > 2}">
            <h2>This is true block yes 3 is greater than 2</h2>
        </c:if>
            
            <%!
                //declarartive tag
                int n1 = 200;
                int n2 = 0;
            %>
            
            <%
                int division = n1/n2;
            %>
            
            <h1>Division is <%= division %></h1>
    </body>
</html>
