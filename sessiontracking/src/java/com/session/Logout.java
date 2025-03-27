
package com.session;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Logout extends HttpServlet{
     @Override
 public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
 {
     HttpSession session = req.getSession();
     //invalidate session delete this session
     session.setAttribute("activeuser",null);
     session.invalidate();
     
     
     //redirect into index.html
        RequestDispatcher rd = req.getRequestDispatcher("/index.html");
         rd.forward(req,res);
 }
    
}
