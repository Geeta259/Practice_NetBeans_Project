package com.practice;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class RegisterServlet extends HttpServlet{
 @Override
 public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
 {
    res.setContentType("text/html");
    PrintWriter out = res.getWriter();
    out.println("<h2>Welcome to Register Servlet</h2>");
    String name = req.getParameter("user_name");
     String password = req.getParameter("user_password");
      String email = req.getParameter("user_email");
       String gender = req.getParameter("user_gender");
       String course = req.getParameter("user_course");
        String cond = req.getParameter("condition");
        if(cond==null)
        {
              out.println("<h2>Please accpet terms and conditions first....</h2>");
              
              //want to include output of index.html
              //get  the object of request dispatcher
              RequestDispatcher rd = req.getRequestDispatcher("index.html");
              rd.include(req,res);
        }
         else   
        {
            out.println("<h2>User Name : " + name + "</h2>");
             out.println("<h2>User Password : " + password + "</h2>");
              out.println("<h2>User Email : " + email + "</h2>");
               out.println("<h2>User Gender : " + gender + "</h2>");
                out.println("<h2>User Course: " + course + "</h2>");
                
                
               //RequestDispatcher rd = req.getRequestDispatcher("success");
              //rd.forward(req,res);
              
              out.println("<h1>Hello, " + name + " Welcome to my webiste....</h1>");
              out.println("<h1><a href='servlet2'>Go to servlet 2</a></h1>");
              
              //create a cookie
              Cookie c = new Cookie("user_name",name);
              res.addCookie(c);
              
        }
 }
}
