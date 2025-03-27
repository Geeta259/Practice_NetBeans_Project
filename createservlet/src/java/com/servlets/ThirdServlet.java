/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlets;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class ThirdServlet extends HttpServlet{
    @Override
    public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
    {
        System.out.println("This is get method to  pass information");
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.print("<h1>This is  get method of servlet</h1>");
    }
    
    @Override
    protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
    {
        
    }
}
