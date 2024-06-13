<%-- 
    Document   : GetAttribute
    Created on : 9 Jun 2024, 12:39:34 am
    Author     : izzul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.math.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Implicit JSP</title>
    </head>
    <body>
        
        <%
            String name = (String) session.getAttribute("user");
            out.println("User Name is: " + name);
        %>
        
    </body>
</html>
