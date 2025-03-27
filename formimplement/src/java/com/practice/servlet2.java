/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.practice;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class servlet2 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet servlet2</title>");            
            out.println("</head>");
            out.println("<body>");
            String name = "";
            boolean flag=false;
            Cookie cookies[] = request.getCookies();
            if(cookies==null)
            {
                out.println("<h1>you are new user go to home page and submit your name...</h1>");
            }
            else
            {
                for(Cookie c : cookies)
                {
                    String temp = c.getName();
                    if(temp.equals("user_name"))
                    {
                        flag = true;
                        name = c.getValue();
                        break;
                    }
                }
            }
            
            if(flag)
            {
              out.println("<h1>Hello, " + name + " welcome back to my website...</h1>");
              out.println("<h1>Thankyou</h1>");
            }    
             out.println("</body>");
            out.println("</html>");
        }
    }
}

