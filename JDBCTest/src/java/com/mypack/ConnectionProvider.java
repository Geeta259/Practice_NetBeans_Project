
package com.mypack;

import java.sql.*;

public class ConnectionProvider {
    private static Connection con;
    
    public static Connection getConnection()
    {
        try
        {
             if(con==null)
            {
                //load the driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                String url="jdbc:mysql://localhost:3306/youtube";
                String user="root";
                String passwd="mysqlpasswd@25";


                con = DriverManager.getConnection(url,user,passwd);

            }
        }catch(Exception e)
        {
            System.out.println(e);
        }
       
        return con;
    }
}
