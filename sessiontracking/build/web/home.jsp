<%-- 
    Document   : home
    Created on : Feb 27, 2024, 6:42:29 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
   <body>
        <%
            String name = (String)session.getAttribute("activeuser");

            %>
            
            <h1>Home Page</h1>
            <h3>Welcome to home page : <%= name %></h3>
            <a href="profile.jsp">Profile</a></br>
            <a href="about.jsp">About</a></br>
              <a href="logout">Logout</a>
           
    </body>
</html>
