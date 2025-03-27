
package com.mypack;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.swing.*;

public class MainClass {
    public static void main(String args[])
    {
        try
        {
          //System.out.println("this is testing");
            
            Connection con = ConnectionProvider.getConnection();
            
            String q = "insert into image(pic) values(?)";
            PreparedStatement pstmt = con.prepareStatement(q);
            
            /*Scanner sc =  new Scanner(System.in);
            System.out.println("Enter name");
            String name = sc.nextLine();
            pstmt.setString(1,name);
            
            System.out.println("Enter city");
            String city = sc.nextLine();
            pstmt.setString(2,city);
       
           */
             JFileChooser jfc = new JFileChooser();
            jfc.showOpenDialog(null);
            File file = jfc.getSelectedFile();
            FileInputStream fis = new FileInputStream(file);
         
            pstmt.setBinaryStream(1,fis,fis.available());
            pstmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null,"success");
           
        }catch(Exception e)
        {
            System.out.println(e);
        }
    }
}
