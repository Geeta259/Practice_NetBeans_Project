package com.servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ShowServlet extends HttpServlet{
 @Override
 public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
 {
    res.setContentType("text/html");
    PrintWriter out = res.getWriter();
    
    String email = req.getParameter("email");
     String pass = req.getParameter("pass");
     
     out.println("<h1>User name is " + email + "</h1>");
     out.println("<h1>User password is " + pass + "</h1>");
                 out.println("<h1><a href='secondservlet'>this is servlet 1 </a></h1>");
              
              //create a cookie
              Cookie c = new Cookie("email",email);
              res.addCookie(c);
           
 }
}
