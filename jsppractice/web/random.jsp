
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- page directive syntax to import java package--%>
<%@page import="java.util.Random,java.util.ArrayList,java.io.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <h1>Random number is : 
        <%
            //scriplet tag
            Random rn = new Random();
            int n = rn.nextInt(9);
        %>
        
        <%= 
            //expression tag
         n %>
        </h1>
    </body>
</html>
