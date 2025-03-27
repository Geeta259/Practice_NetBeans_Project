/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author user
 */
package com.servlets;

import javax.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;


public class FirstServlet implements Servlet{
    ServletConfig conf;
     @Override
    //life cycle method 
    public void init(ServletConfig conf)
    {
        this.conf = conf;
        System.out.println("creating object inside init");
    }
 
    @Override
    public void service(ServletRequest srq,ServletResponse srp) throws ServletException,IOException
    {
        System.out.println("Processing inside service");
        srp.setContentType("text/html");
        PrintWriter out = srp.getWriter();
        out.println("<h1>This is my output from servlet interface</h1>");
        out.println("<h1>Today date and time is " + new Date().toString() + "</h1>");
    }
     @Override
    public void destroy()
    {
        System.out.println("Going to destroy servlet object");
    }
 
     @Override
    //non life cycle method
    public ServletConfig getServletConfig()
    {
        return this.conf;
    }
     @Override
    public String getServletInfo()
    {
        return "servlet created";
    }
}
