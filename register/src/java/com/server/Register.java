
package com.server;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;

/**
 *
 * @author user
 */

//mentioned when form pass more type of data like text,image,video etc..
@MultipartConfig
public class Register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
          /*  out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Register</title>");            
            out.println("</head>");
            out.println("<body>");*/
            //getting all information from user
            String name = request.getParameter("user_name");
            String password = request.getParameter("user_password");
            String email = request.getParameter("user_email");
            
            Part part = request.getPart("image");
            String filename = part.getSubmittedFileName();
            //out.println(filename);
            //out.println(name);
            //out.println(password);
            //out.println(email);
            
            try
            {
                Thread.sleep(3000);
                
                //connection
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube","root","mysqlpasswd@25");
                
                //query
                String q="insert into user(name,password,email,image) values(?,?,?,?)";
                PreparedStatement pstmt = con.prepareStatement(q);
                pstmt.setString(1,name);
                pstmt.setString(2,password);
                pstmt.setString(3,email);
                pstmt.setString(4,filename);
                
                pstmt.executeUpdate();
                
                
                //upload file into folder
                InputStream is = part.getInputStream();
                byte[] data  = new byte[is.available()];
                
                is.read(data);
                
                String path = request.getRealPath("/")+"image"+File.separator+filename;
               // out.println(path);
                
                out.println("done");
                
                FileOutputStream fos = new FileOutputStream(path);
                fos.write(data);
                
                fos.close();
                
            }catch(Exception e)
            {
                System.out.println(e);
            }
            
            
            
          //  out.println("</body>");
            //out.println("</html>");
        }
    }

}
