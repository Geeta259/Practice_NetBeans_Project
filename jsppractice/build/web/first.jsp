<%-- 
    Document   : first
    Created on : Dec 21, 2023, 3:52:31 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>This is first JSP page</h1>
        <%!
            //variable declaration and method declaration declarative tag
            int a = 50;
            int b = 10;
            String name="techsoft india";
            
             public int doSum()
            {
                return a+b;
            }
            public String reverse()
            {
                StringBuffer br = new StringBuffer(name);
                return br.reverse().toString();
            }
        %>
        
        <%
            //server  scripting scriplet tag
            out.println(a+"<br>");
            out.println(b+"<br>");
            out.println("sum is "+doSum()+"<br>");
            out.println("reverse of given string is "+reverse()+"<br>");
         %>
         
         <h1>Sum is : <%= 
            //expression tag
             doSum() %></h1>
         
    </body>
</html>
