<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Customization Form</title>
    <link rel="stylesheet" href="../CSS/service.css">
</head>

<body>
    <div class="backButton">
        <a href="../index1.html#service"><button type="button"><span class="icon">👈</span>Back</button></a>
    </div>
    <div class="form-container">
        <h1>Car Paint Form</h1>
        <form action="ServiceController" method="POST">
            <div class="input-group">
                <span class="icon">🚗</span>
                <label for="carName">Car Name:</label>
                <input type="text" id="carName" name="carName" placeholder="Enter the car name" required>
            </div>

            <div class="input-group">
                <span class="icon">🛠️</span>
                <label for="model">Car Model:</label>
                <input type="text" id="model" name="model" placeholder="Enter car model" required>
            </div>

            <div class="input-group">
                <span class="icon">👤</span>
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" placeholder="Enter your full name" required>
            </div>

            <div class="input-group">
                <span class="icon">📧</span>
                <label for="email">Email Address:</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>

            <div class="input-group">
                <span class="icon">📞</span>
                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>
            </div>

            <div class="input-group">
                <span class="icon">🌍</span>
                <label for="location">Select location:</label>
                <select id="color" name="location" class="color-select" required>
                    <option value="Ahilyanagar" readonly>Ahilyanagar</option>
                    <option
                        value="TATA Motors Showroom, Ground Floor, Nagar, Pune Highway, Kedgoav, Ahilyanagar, Maharastra, 414005">
                        TATA Motors Showroom:- Nagar, Pune Highway, Kedgoav,Ahilyanagar
                    </option>
                    <option value="Mahendra Motors Showroom, Shivaji Nagar, Ahilyanagar, Maharastra, 414001">
                        Mahendra Motors Showroom:- Shivaji Nagar,Ahilyanagar
                    </option>
                </select>
            </div>

            <div class="input-group">
                <span class="icon">🎨</span>
                <label for="color">Select Car Color:</label>
                <select id="color" name="color" class="color-select" required>
                    <option value="red">Red</option>
                    <option value="blue">Blue</option>
                    <option value="black">Black</option>
                    <option value="white">White</option>
                    <option value="silver">Silver</option>
                    <option value="green">Green</option>
                    <option value="yellow">Yellow</option>
                    <option value="purple">Purple</option>
                    <option value="orange">Orange</option>
                    <option value="gray">Gray</option>
                </select>
            </div>
			<div class="input-group">
			   	<span class="icon">📅</span>
			   	<label for="color">Select Date:</label>
			   	<input type="date" name="date">
			</div>
			
            <button type="submit">Submit</button>
        </form>
    </div>
</body>

</html>