<%-- 
    Document   : RetrieveData
    Created on : Feb 27, 2024, 5:10:58 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
    String driver="com.mysql.cj.jdbc.Driver";
  String url="jdbc:mysql://localhost:3306/college";
   String user="root";
   String passwd="mysqlpasswd@25";
 //load the driver
 try
 {
  Class.forName(driver);
              
}catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection con = null;
Statement stat = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<body>

<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>First Name</td>
<td>Last Name</td>
<td>Email</td>
<td>Gender</td>
<td>City Name</td>
<td>Course</td>
<td>Semester</td>

</tr>
<%
    try{
con = DriverManager.getConnection(url, user, passwd);
stat=con.createStatement();
String sql ="select * from student";
resultSet = stat.executeQuery(sql);
while(resultSet.next()){
%>

<tr>
<td><%=resultSet.getString("first_name") %></td>
<td><%=resultSet.getString("last_name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("city_name") %></td>
<td><%=resultSet.getString("course") %></td>
<td><%=resultSet.getString("semester") %></td>
</tr>
<%
}

con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
