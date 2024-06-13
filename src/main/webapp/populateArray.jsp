<%-- 
    Document   : populateArray
    Created on : 9 Jun 2024, 4:01:40 pm
    Author     : izzul
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Salesman Data</title>
    <style>
        table {
            width: 50%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2c66d;
        }
    </style>
</head>
<body>
    <h1>Read Java array and populate it into HTML's table</h1>
    <%
        // Define the salesman data
        String[] salesmen = { "Salesman 1", "Salesman 2", "Salesman 3" };
        int[][] sales = {
            { 2500, 2100, 2200 },
            { 2000, 1900, 2400 },
            { 1800, 2200, 2450 }
        };
    %>
    <table>
        <tr>
            <th>Salesman</th>
            <th>Jan</th>
            <th>Feb</th>
            <th>Mac</th>
        </tr>
        <%
            for (int i = 0; i < salesmen.length; i++) {
        %>
        <tr>
            <td><%= salesmen[i] %></td>
            <td><%= sales[i][0] %></td>
            <td><%= sales[i][1] %></td>
            <td><%= sales[i][2] %></td>
        </tr>
        <%
            }
        %>
    </table>
    <p>©2016-Mohamad Nor</p>
</body>
</html>
