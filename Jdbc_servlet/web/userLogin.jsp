<%@page import="org.apache.catalina.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
    </head>
    <body>
         <h2>User Login</h2>
        
        <%
        User user = null; // Initialize user to null

        // Check if the form was submitted
        if (request.getMethod().equalsIgnoreCase("post")) {
            // Retrieve user from the database based on the provided username
            // Example: user = userService.getUserByUsername(request.getParameter("username"));

            // Debugging: Print out user and password for verification
            out.println("User: " + user);
            out.println("Password from form: " + request.getParameter("password"));

            // Check if user is not null and the password is correct
            if (user != null && user.getPassword().equals(request.getParameter("password"))) {
                // Debugging: Print out username before setting in session
                out.println("Setting username in session: " + user.getUsername());

                // Login successful
                session=request.getSession();
                session.setAttribute("name_key", user.getUsername());
                response.sendRedirect("userHome.jsp");
                return; // Add return to avoid further execution of the JSP
            } else {
                // Debugging: Print out login failure message
                out.println("<p>Login failed. Please check your credentials.</p>");
            }
        }
    %>

    <form action="userHome.jsp" method="post">
        Username: <input type="text" name="username" required><br>
        Password: <input type="password" name="password" required><br>
        <input type="submit" value="Login">
    </form>

    </body>
</html>
