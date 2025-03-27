<%-- 
    Document   : checklogin
    Created on : Apr 22, 2024, 8:24:39 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Login Page</title>
    </head>
    <body>
        
                 <%
        String user = (String)session.getAttribute("username"); // Initialize user to null
         String password = (String)session.getAttribute("password");

        // Check if the form was submitted
        if (request.getMethod().equalsIgnoreCase("post")) {
            // Retrieve user from the database based on the provided username
            // Example: user = userService.getUserByUsername(request.getParameter("username"));

            // Debugging: Print out user and password for verification
           // out.println("User: " + request.getParameter("user"));
            //out.println("Password from form: " + request.getParameter("password"));

            // Check if user is not null and the password is correct
            String getname = request.getParameter("username");
            String getpassword  = request.getParameter("password");
            
            if (getname.equals(user) && getpassword.equals(getpassword)) {
                // Debugging: Print out username before setting in session
           
                // Login successful
                session=request.getSession();
                session.setAttribute("name_key", user);
                
              // out.println(getname+ " " + user);
               //out.println(getpassword+ " " + password);
               
                response.sendRedirect("home.jsp");
                return; // Add return to avoid further execution of the JSP
            } else {
                // Debugging: Print out login failure message
                // out.println(getname+ " " + user);
               //out.println(getpassword+ " " + password);
              
            
                out.println("<p>Login failed. Please check your credentials.</p>");
                out.println("<p>Enter correct user name and password.</p>");
                out.println("<a href='login.jsp'>Go to Login Page</a>");
               
            }
        }
    %>
    </body>
</html>
