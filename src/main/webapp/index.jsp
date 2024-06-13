<%-- 
    Document   : index.jsp
    Created on : 14 Jun 2024, 12:31:17 am
    Author     : izzul
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Circle Area Calculator</title>
    <script>
        function validateForm() {
            var radius = document.forms["circleForm"]["radius"].value;
            if (isNaN(radius) || radius == "") {
                alert("Please enter a valid number for the radius.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <h1>Calculate Area of a Circle</h1>
    <form name="circleForm" action="calculateArea" method="post" onsubmit="return validateForm()">
        <label for="radius">Please enter the radius:</label>
        <input type="text" id="radius" name="radius">
        <input type="submit" value="Submit">
    </form>
</body>
</html>

