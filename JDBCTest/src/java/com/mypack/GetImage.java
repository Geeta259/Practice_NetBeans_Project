
package com.mypack;
import java.awt.Image;
import java.io.InputStream;
import javax.swing.*;
import java.sql.*;
import javax.imageio.ImageIO;

public class GetImage {
   public static ImageIcon getImageById(int id,Connection con)
   {
       ImageIcon imgicon = null; 
       
       try
       {
           String q = "select pic from image where id=?";
           PreparedStatement pstmt = con.prepareStatement(q);
           pstmt.setInt(1,id);
           ResultSet rs = pstmt.executeQuery();
           
           if(rs.next())
           {
               //if it valid id fetch row
               //pic column type blob it will return blob object
               Blob b = rs.getBlob("pic");
               
               InputStream is = b.getBinaryStream();
               Image img = ImageIO.read(is);
               
               imgicon = new ImageIcon(img);
           }
           
       }catch(Exception e)
       {
           System.out.println(e);
       }
       return imgicon;
   }
}
