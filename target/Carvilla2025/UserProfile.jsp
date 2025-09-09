<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="entities.User" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CarVilla - User Profile</title>
    <link rel="icon" type="png" href="./assets/logo/favicon.png">
    <link rel="stylesheet" href="./CSS/mobilestyel.css">
    <link rel="stylesheet" href="./CSS/prefixCSS.css">
    <link rel="stylesheet" href="./CSS/userProfile.css">
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">

<style>
.UserName {
height: 6rem;
background: linear-gradient(90deg, rgba(238, 130, 238, 1) 0%, rgba(0, 209, 255, 1100%));
 }
 .item-1 .userOption{
	display: flex;
    align-items: center;
    justify-content: center;
    gap: 1rem;
    margin-top: 1.5rem;
}
.userOption .userBtn{
    padding: 5px;
    height: 1.5rem;
    border: none;
    width: 5rem;
    border: 0.2px solid #8080806e;
    border-radius: 5rem;
    font-size: 13px;
    background-color: #00000000;
    color: #000000ad;
    text-align: center;	
}

.userOption .userBtn:hover {
	background-color: #0071d8;
	color: white;
	cursor: pointer;
	transition: 0.50s;
	}
</style>
</head>
<%
User user = null;
String user_name = "Admin";
String user_email = "Admin@gmail.com";

if(session.getAttribute("user") != null)
{
	user = (User)session.getAttribute("user");
	user_name = user.getUserName();
	user_email = user.getEmail();
}else{
	
}
// Get user information

%>
<body>
    <section>
        <div class="header">
            <div class="wrap">
                <div class="container ">
                    <div class="navbar-header">
                        <div class="navbar-brand">
                            CarVilla
                        </div>
                    </div>
                    <div class="nav">
                        <ul class="navbox">
                            <li><a  href="index.jsp">home</a></li>
                            <li><a class="active" href="#">User Account</a></li>
                            <!-- <li><a href="#featured-cars">featured cars</a></li>
                            <li><a href="#new-cars">new cars</a></li> -->
                            <li><a href="#contact">Contact</a></li>
                            <li><a href="Login.jsp">logout</a></li>
                        </ul>
                        </ul>
                    </div>

                    <!-- Mobile vresion navbar -->
                    <div class="hamburger">

                        <nav role="navigation">
                            <div id="menuToggle">
                                <input type="checkbox" />

                                <span></span>
                                <span></span>
                                <span></span>


                                <ul id="menu">
                                    <a href="index1.html">
                                        <li>Home</li>
                                    </a>
                                    <a href="#service">
                                        <li>service</li>
                                    </a>
                                    <a href="#featured">
                                        <li>featured</li>
                                    </a>
                                    <a href="#new cars">
                                        <li>new cars</li>
                                    </a>
                                    <a href="#Contact">
                                        <li>Contact</li>
                                    </a>
                                </ul>
                            </div>
                        </nav>
                        <!-- mobile version navbar end -->
    </section>

		<div class="pbox">
			<section>
				<div class="item-1 " id="item-1">
					<div class="UserSection">
						<div class="pimage"></div>
						<div class="name">
							<div class="pname">
								<%= user_name %>
							</div>
							<div class="pemail">
								<%= user_email %>
							</div>
						</div>
						<form action="UserController" method="post">
						<div class="userOption">
							<button class="userBtn" id="userBtn" type="button" name="btn"
								value="Edit Profile">Edit</button>
							<button class="userBtn" id="userBtn" type="button" name="btn"
								value="Edit Profile">#Grow</button>
							<button class="userBtn" id="userBtn" type="button" name="btn"
								value="Edit Profile">100 🧡</button>
						</div>
						</form>
						<form action="BookingController" method="post">
						<div class="elemets">
							<td><img class="img1" src="./assets/logo/history.png" alt="Orders">
								<li>
									<button id="itext" type="submit" name="btn" value="booking_history" 
									style="border: none;
    								background: none;
    								font-weight: bold;
    								font-family: cursive;
    								font-size: 20px;">Booking history</button>
								</li>
							</td>
							
							<td><img class="img2" src="./assets/logo/secure.png" alt="Security">
								<li>
									<button id="itext" type="submit" name="btn" value="Bookinghistory" 
									style="border: none;
    								background: none;
    								font-weight: bold;
    								font-family: cursive;
    								font-size: 20px;">Security</button>
								</li>
							</td>
							
							<td><img class="img4" src="./assets/logo/settings.png" alt="setting">
								<li>
									<button id="itext" type="submit" name="btn" value="Bookinghistory" 
									style="border: none;
    								background: none;
    								font-weight: bold;
    								font-family: cursive;
    								font-size: 20px;">setting</button>
								</li>
							</td>
						</div>
						</form>
					</div>
					<form action="UserController" method="post">
					<div class="logout">
						<hr>
						<img class="img5" src="./assets/logo/log-out.png" alt="">
						<button type="submit" class="logoutButton" id="logoutText" name="btn" value="Logout">Logout</button>
					</div>
					</form>
				</div>
			</section>

			<section class="information">
				<div class="orderBox">
					<a href="./BookingHistory.jsp" style="color: rgb(0, 0, 0);">
						<div class="orderB b1">
							<img class="l1" src="./assets/logo/refresh.png" alt="icon"><span>Booking
								history</span>
							<p class="btext">Welcome to our bookings section</p>
							<p class="btext b1-text">Lorem ipsum dolor sit amet
								consectetur adipisicing elit. Doloremque amet nisi fugiat
								placeat alias dolor?</p>
						</div>
					</a> 
					<a href="Login.php" style="color: rgb(0, 0, 0);">
						<div class="secureBox b1">
							<img class="l1" src="./assets/logo/unlocked.png" alt=""><span>Login
								& security</span>
							<p class="btext">Edit login, name, and mobile number</p>
							<p class="btext b1-text">Lorem ipsum dolor sit amet
								consectetur adipisicing elit. Doloremque amet nisi fugiat
								placeat alias dolor?</p>
						</div>
					</a> <a href="Login.php" style="color: rgb(0, 0, 0);">
						<div class="yourAddr b1">
							<img class="l1" src="./assets/logo/placeholder.png" alt=""><span>Your
								Address</span>
							<p class="btext">Edit Address for bookings</p>
							<p class="btext b1-text">Lorem ipsum dolor sit amet
								consectetur adipisicing elit. Doloremque amet nisi fugiat
								placeat alias dolor?</p>
						</div>
					</a> <a href="" style="color: rgb(0, 0, 0);">
						<div class="ContactUs b1">
							<img class="l1" src="./assets/logo/operator.png" alt=""><span>Contact
								Us</span>
							<p class="btext">ContactUs for more details.</p>
							<p class="btext b1-text">Lorem ipsum dolor sit amet
								consectetur adipisicing elit. Doloremque amet nisi fugiat
								placeat alias dolor?</p>
						</div>
					</a>
				</div>
			</section>

		</div>
	</form>
	</html>
</body>