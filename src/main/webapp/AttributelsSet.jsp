<%-- 
    Document   : AttributelsSet
    Created on : 9 Jun 2024, 12:27:30 am
    Author     : izzul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.math.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Implicit JSP</title>
    </head>
    <body>
        
        <% session.setAttribute("user", "Fuod Abdulhameer");%>
        <a href="GetAttribute.jsp"> Click here to get user name </a>
        <br>
        <a href="MathematicsOperations.jsp"> Result of Mathematics Operation </a>
        <br/>
    </body>
</html>
