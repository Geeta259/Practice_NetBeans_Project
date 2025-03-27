package com.session;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;
    

public class CheckLogin extends HttpServlet{
    @Override
 public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
 {
    res.setContentType("text/html");
    PrintWriter out = res.getWriter();
   
  
     String password = req.getParameter("passwd");
      String email = req.getParameter("email");
     
      if(email.equals("test24@gmail.com") && password.equals("test123"))
        {
            HttpSession session = req.getSession();
            session.setAttribute("activeuser","Test User");
              //get  the object of request dispatcher redirect to profile.jsp
              RequestDispatcher rd = req.getRequestDispatcher("/profile.jsp");
              rd.forward(req,res);
         }
         else   
        {
          
            //include this error message into index.html
            out.println("<h2 style='color:red'>Email id and password did not match</h2>");
            RequestDispatcher rd = req.getRequestDispatcher("/index.html");
              rd.include(req,res);
               
        }
 }
}
