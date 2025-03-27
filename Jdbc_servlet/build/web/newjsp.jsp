<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <h2>User Registration</h2>
    
    <form action="userLogin.jsp" method="post">
        Username: <input type="text" name="username" required><br>
        Password: <input type="password" name="password" required><br>
        <input type="submit" value="Register">
    </form>

    <%-- Process registration form data --%>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username != null && password != null) {
            // Handle registration logic, save user data to the database, etc.
            // Example: userService.registerUser(username, password);
            
            // Redirect to login page after registration
            response.sendRedirect("userLogin.jsp");
        }
    %>
    </body>
</html>

