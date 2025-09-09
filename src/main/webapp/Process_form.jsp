<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="entities.BookingUser" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="favicon.png" type="image/x-icon">
    <title>CarVilla - Booking Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #f2f2f2;
            overflow: hidden;
        }

        .container {
            max-width: 1200px;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            position: relative;
            left: 4%;
            top: 1.5rem;
        }

        h2 {
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border-radius: 5px;
            overflow: hidden;
        }

        th,
        td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
            text-align: left;
            position: relative;
            white-space: nowrap;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:last-child td {
            border-bottom: none;
        }

        .success-message {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #5cb85c;
            color: #fff;
            padding: 40px;
            border-radius: 20px;
            animation: fadeOut 7s ease forwards;
        }

        @keyframes fadeOut {
            0% {
                opacity: 1;
            }

            100% {
                opacity: 0;
            }
        }

        th:first-child {
            border-right: 1px solid #ddd;
        }

        td:first-child {
            border-right: 1px solid #ddd;
        }

        .btn-container {
            display: flex;
            justify-content: right;
            align-items: right;
            margin-top: 20px;
        }

        .btn-container a {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn-container a:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>
    <div class="container">
        <% 
        	if(session.getAttribute("BookingUser") != null)
        	{
        %>
        		<div class="success-message">Successful Booking!</div>
                <div class="booking-details">
                <h2>Booking Details:</h2>
                <table>
                <tr><th>Field</th><th>Value</th></tr>
        		<%
        			BookingUser bu = (BookingUser) session.getAttribute("BookingUser");
        			out.println("<tr><td>Username</td><td>"+ bu.getName()+"</td></tr>");
        			out.println("<tr><td>Email</td><td>"+ bu.getEmail() +"</td></tr>");
        			out.println("<tr><td>Phone</td><td>"+ bu.getPhone() +"</td></tr>");
        			out.println("<tr><td>Address</td><td>"+ bu.getAddress() +"</td></tr>");
        			out.println("<tr><td>Carname</td><td>"+ bu.getCarName() +"</td></tr>");
        			out.println("<tr><td>Model</td><td>"+ bu.getModel() +"</td></tr>");
        			out.println("<tr><td>Price</td><td>"+ bu.getPrice() +"</td></tr>");
        			out.println("<tr><td>Showroom</td><td>"+ bu.getShowroom() +"</td></tr>");

        		%>
        
          </table>
          <div class="btn-container">
          <a class="print-link" href="#" onclick="window.print()">Print Page</a>
          </div>
          </div>
        <%
        }else{
        	%>
        	<div>
        		<h1>Error 404: Page not found</h1>
        	</div>
        	<%
        }
        %>
    </div>
</body>

</html>