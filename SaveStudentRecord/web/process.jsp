<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    
 String first_name=request.getParameter("first_name");
String last_name=request.getParameter("second_name");
String email=request.getParameter("user_email");
String gender=request.getParameter("user_gender");
String course=request.getParameter("user_course");
String city_name=request.getParameter("city_name");
String semester=request.getParameter("semester");

try
{
          //load the driver
                Class.forName("com.mysql.cj.jdbc.Driver");
                String url="jdbc:mysql://localhost:3306/college";
                String user="root";
                String passwd="mysqlpasswd@25";
                
               Connection con = DriverManager.getConnection(url,user,passwd);

            
               //insert into database
           String q = "insert into student(first_name,last_name,email,gender,city_name,course,semester)values(?,?,?,?,?,?,?)";
           PreparedStatement pst = con.prepareStatement(q);
           pst.setString(1,first_name);
           pst.setString(2,last_name);
           pst.setString(3,email);
           pst.setString(4,gender);
           pst.setString(5,city_name);
           pst.setString(6,course);
           pst.setString(7,semester);
           
           
          pst.executeUpdate();
          
        out.println("Data is successfully inserted!");
        out.println("<b><a href='RetrieveData.jsp'>Show Record</a></b>");
        }
        catch(Exception e)
        {
        System.out.println(e);
        e.printStackTrace();
        }
 %>
  