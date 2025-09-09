<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="entities.BookingUser" %>
<%
	if(session.getAttribute("user") != null){
		
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../assets/logo/favicon.png" type="image/x-icon">
    <title>CarVilla - Booking Form</title>
    <link rel="stylesheet" href="./CSS/booking.css">
</head>

<body>
    <div class="imgae">
        <div class="container">
        <%
        	if(session.getAttribute("BookingUser") != null){
        		BookingUser bu = (BookingUser)session.getAttribute("BookingUser");
        %>
            <h2>Car Booking Form :</h2>
            <form id="bookingForm" action="BookingController" method="post">
                <div class="form-group">
                    <label for="carName">Car Name:</label>
                    <input type="text" id="carName" name="carname" readonly value=<%= bu.getCarName() %>>
                </div>
                <div class="form-group">
                    <label for="model">Model:</label>
                    <input type="text" id="model" name="model" readonly value=<%= bu.getModel() %>>
                </div>
                <div class="form-group">
                    <label for="price">Price:</label>
                    <input type="text" id="price" name="price" readonly value="<%= bu.getPrice() %>">
                </div>
                <div class="form-group">
                    <label for="name">Your Name:</label>
                    <input type="text" id="name" name="name" placeholder="Enter your name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" placeholder="Enter your email" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone Number:</label>
                    <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>
                </div>
                <div class="form-group">
                    <label for="age">Age:</label>
                    <input type="number" id="age" name="age" placeholder="Enter your age" required>
                </div>
                <div class="form-group">
                    <label for="address">Address:</label>
                    <textarea id="address" name="address" placeholder="Enter your address" rows="4" required></textarea>
                </div>

                <div class="form-group">
                    <label for="showroom">Select showroom Location</label>
                    <select id="showroom" name="showroom" required>
                        <option readonly value="Ahilyanagar">Ahilyanagar
                        <option
                            value="TATA Motors Showroom, Ground Floor, Nagar, Pune Highway, Kedgoav, Ahilyanagar, Maharastra, 414005">
                            TATA Motors Showroom:- Nagar, Pune Highway, Kedgoav,Ahilyanagar
                        </option>
                        <option value="Mahendra Motors Showroom, Shivaji Nagar, Ahilyanagar, Maharastra, 414001">
                            Mahendra Motors Showroom:- Shivaji Nagar,Ahilyanagar
                        </option>
                        </option>
                    </select>
                </div>

                <input type="submit" value="Submit Booking" name="btn">
            </form>
            <%
        	}
            %>
        </div>
    </div>
</body>
</html>
<%
	}else{
		response.sendRedirect("Register.jsp");	
	}
%>