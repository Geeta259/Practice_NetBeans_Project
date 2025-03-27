<%-- 
   this page location mentioned in web.xml file 
if error code 404 found this page will load
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>
        <div class="container p-3 text-center">
            <img src="image/OIP.jpeg" class="img-fluid mb-3"/>
            <h1 class="display-3">Page not found !</h1>
            <a href="index.html" class="btn btn-outline-primary mt-3">Home</a>
        </div>
        
    </body>
</html>