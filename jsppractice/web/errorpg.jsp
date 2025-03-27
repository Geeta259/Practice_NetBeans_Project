
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- iserrorpage show that current page handling with error --%>
<%@page isErrorPage="true"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
        <style>
            *{
                padding:0px;
                margin:0px;
            }
        </style>
    </head>
    <body>
        <div style="padding:20px;color:blue;background:#e2e2e2;">
            <h1>
                Sorry !! Something went wrong ...
            </h1>
            <p><%= exception %></p>
        </div>
    </body>
</html>
