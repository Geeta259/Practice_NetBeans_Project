<%@page import="org.apache.catalina.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Home</title>
    </head>
    
    <h2>Welcome Back.....<%= session.getAttribute("name_key")%></h2>
         <h2>Welcome to home page!! </h2>
    
    <!-- Your user home content goes here -->
    
    <br>
    <a href="login.jsp">Logout</a>
    
</html>
