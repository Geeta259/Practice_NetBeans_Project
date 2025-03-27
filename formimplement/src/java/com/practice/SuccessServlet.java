
package com.practice;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class SuccessServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
    {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("This is success servlet");
        out.println("<h2>Successfully registered!!</h2>");
    }
}
