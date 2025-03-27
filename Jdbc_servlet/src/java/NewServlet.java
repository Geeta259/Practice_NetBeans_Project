/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet(urlPatterns = {"/NewServlet"})
public class NewServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        //get the parameters
        
        String name = request.getParameter("user_name");
        String course = request.getParameter("user_course");
        
        try {
            //load the driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            //create connection
            String url = "jdbc:mysql://localhost:3306/college";
            String username = "root";
            String password = "mysqlpasswd@25";

            Connection con = DriverManager.getConnection(url, username, password);
            
            //create a query 
            String q = "insert into stud(name , dept) values(?,?)";

            //create a statement

            PreparedStatement pstmt = con.prepareStatement(q);
            
            pstmt.setString(1, name);
            pstmt.setString(2, course);
            
            pstmt.executeUpdate();
            
            String query = "select * from stud";
            
            Statement stmt = con.createStatement();
            ResultSet set = stmt.executeQuery(query);
            
            PrintWriter out = response.getWriter();
            out.println("<h2> Showing Student Records: ");
            out.println("<table style='border: 1px solid'>");
            out.println("<tr><th>Student_Id</th><th>Student_Name</th><th>Student_Dept</th></tr>");
            while(set.next()){
                int id = set.getInt(1);
                String st_name = set.getString(2);
                String st_dept = set.getString(3);
                out.println("<tr><td>"+id+"</td><td>"+st_name+"</td><td>" +st_dept+"</td></tr>");
                
            }
            out.println("</table");
            

            con.close();
            System.out.println("Inserted data");
            
            if(con.isClosed())
                System.out.println("COnnection is closed");
            else
                System.out.println("COnnection is created.......");


        } catch (Exception e) {
           System.out.println(e);
        }
        
    }

}
