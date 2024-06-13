<%-- 
    Document   : ReadSalesFile
    Created on : 13 Jun 2024, 11:09:25 pm
    Author     : izzul
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sales Data</title>
    <style>
        table {
            width: 60%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <table>
        <tr>
            <th>Customer</th>
            <th>Cust. Type</th>
            <th>Purchase</th>
            <th>Discount</th>
        </tr>
        <%
            String filePath = application.getRealPath("/") + "Sales.csv";
            BufferedReader br = new BufferedReader(new FileReader(filePath));
            String line;
            while ((line = br.readLine()) != null) {
                String[] data = line.split(";");
                String customer = data[0];
                String custType = data[1];
                double purchase = Double.parseDouble(data[2]);
                double discount = 0.0;

                if (custType.equals("Cash")) {
                    discount = purchase * 0.10;
                }

                out.println("<tr>");
                out.println("<td>" + customer + "</td>");
                out.println("<td>" + custType + "</td>");
                out.println("<td>" + String.format("%.2f", purchase) + "</td>");
                out.println("<td>" + String.format("%.2f", discount) + "</td>");
                out.println("</tr>");
            }
            br.close();
        %>
    </table>
</body>
</html>
