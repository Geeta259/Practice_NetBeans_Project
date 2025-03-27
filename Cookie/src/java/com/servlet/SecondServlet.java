package com.servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SecondServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
           
            String name = "";
          
            Cookie cookies[] = req.getCookies();
           for(Cookie c : cookies)
                {
                    String temp = c.getName();
                    if(temp.equals("email"))
                    {
                     
                        name = c.getValue();
                        break;
                    }
                }
            
            
          out.println("Cookies value stored....\n");
          out.println("\n Stored email is " + name);
         out.println("success");
        }
    
}

