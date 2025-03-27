
package com.mypack;
import java.sql.*;
import java.util.*;

public class UpdateClass {
  public static void main(String args[])
    {
        try
        {
            Connection con = ConnectionProvider.getConnection();
            
            String q = "update table1 set tname=? , tcity=? where tid=?";
            PreparedStatement pstmt = con.prepareStatement(q);
            
            Scanner sc =  new Scanner(System.in);
            System.out.println("Enter name");
            String name = sc.nextLine();
            pstmt.setString(1,name);
            
            System.out.println("Enter city");
            String city = sc.nextLine();
            pstmt.setString(2,city);
            
             System.out.println("Enter student id for update record");
            int id = sc.nextInt();
            pstmt.setInt(3,id);
            
            pstmt.executeUpdate();
            
            System.out.println("update data successfully");
            
            con.close();
            
        }catch(Exception e)
        {
            System.out.println(e);
        }   
    }
}
