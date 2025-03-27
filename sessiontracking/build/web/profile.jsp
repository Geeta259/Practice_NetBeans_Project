
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
    </head>
    <body>
        <%
            String name = (String)session.getAttribute("activeuser");

            %>
            
            <h1>Profile Page</h1>
            <h3>Welcome : <%= name %></h3>
            
            
            <a href="home.jsp">Home</a></br>
            <a href="about.jsp">About</a></br>
            <a href="logout">Logout</a>
            
    </body>
</html>
