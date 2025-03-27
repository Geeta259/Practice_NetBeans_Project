<%-- 

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/taglib" prefix="t"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <hr>
        <t:printtable number="23" color="red"></t:printtable>
        <t:printtable number="13" color="blue"></t:printtable>
        <t:mytag></t:mytag>
    </body>
</html>
