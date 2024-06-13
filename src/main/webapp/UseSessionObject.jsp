<%-- 
    Document   : UseSessionObject
    Created on : 13 Jun 2024, 10:47:14 pm
    Author     : izzul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Implicit JSP </title>
    </head>
    <body>
        <% session.setAttribute("user","Fouad abdulameer");%>
        <a href="GetAttribute.jsp"> Click here to get user name</a><!-- comment -->
        
    </body>
</html>
