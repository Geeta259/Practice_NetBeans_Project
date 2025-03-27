/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlets;

/**
 *
 * @author user
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
public class SecondServlet extends GenericServlet{
    @Override
    public void service(ServletRequest srq,ServletResponse srp) throws ServletException,IOException
    {
       System.out.println("This is servlet using generic servlet class");
       srp.setContentType("text/html");
       PrintWriter out = srp.getWriter();
       out.println("<h1>This is my second servlet using generic servlet</h1>");
    }
}
