<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
    </head>
    <body>
        <h2>Registered Successfully!!!</h2>
         <h2>Login Here...</h2>
        
          <%
        String user = request.getParameter("username");
        String pass = request.getParameter("password");

              session=request.getSession();
            session.setAttribute("username",user);
            session.setAttribute("password",pass);
            
        
    %>
  
    <form action="checklogin.jsp" method="post">
       
        Username: <input type="text" name="username" required><br>
        Password: <input type="password" name="password" required><br>
        <input type="submit" value="Login">
    </form>

    </body>
</html>


