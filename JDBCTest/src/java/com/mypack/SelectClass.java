
package com.mypack;

import java.sql.*;

public class SelectClass {
    public static void main(String args[])
    {
        try
        {
           Connection con = ConnectionProvider.getConnection();
           String q = "select * from table1";
           Statement st = con.createStatement();
           ResultSet rs = st.executeQuery(q);
           
           while(rs.next())
           {
               int id = rs.getInt("tid");
               String name = rs.getString("tname");
               String city = rs.getString("tcity");
               
               System.out.println(id + " : " + name + " : " + city);
           }
           
           con.close();
           
        }catch(Exception e)
        {
            System.out.println(e);
        }
    }
}
