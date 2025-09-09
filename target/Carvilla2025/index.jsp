<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" import="entities.Car" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CarVilla - Home</title>
    <link rel="icon" type="png" href="./assets/logo/favicon.png">
    <link rel="stylesheet" href="./CSS/prefixCSS.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">
        
</head>

<body>
    <section>
        <div id="home" class="background">
            <div class="glass">
              <%
				String msg ="";
              if(session.getAttribute("msg2") != null) {
		 			msg =""+(String) session.getAttribute("msg2");
				%>
				<div style="position: absolute;
    						z-index: 100;
    						background: #2e80e3c7;
    						width: 22rem;
    						padding: 20px;
    						font-size: 1.5rem;
    						justify-content: center;
    						display: flex;
    						align-items: center;
    						left: 37%;
    						border-radius: 6px;">
					<%= msg %>
				</div>
				<script>
        			setTimeout(function() {
            			window.location.href = "<%= request.getRequestURI() %>";
        			}, 2000);
    			</script>
				<%
        			session.removeAttribute("msg2");
    				}
				%>
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
                                    <li><a class="active" href="#home">home</a></li>
                                    <li><a href="#service">service</a></li>
                                    <li><a href="#featured-cars">featured cars</a></li>
                                    <li><a href="#new-cars">new cars</a></li>
                                    <li><a href="./contact/Contact.php">Contact Us</a></li>
                                    <li>
                                        <div class="dropdown">
                                            <button class="dropbtn">Account & Lists
                                                <i class="fa fa-caret-down"><span>👇</span></i>
                                            </button>
                                            <div class="dropdown-content">
                                                <a href="./Login.jsp" class="drop-content" target="_self"><i
                                                        class="fa fa-sign-in"></i>
                                                    Sign
                                                    in</a>
                                                <a href="./UserProfile.jsp" class="drop-content" target="_self"><i
                                                        class="fa fa-list"></i>User
                                                    Account</a>
                                                <a href="#" class="drop-content"><i class="fa fa-user"
                                                        target="_self"></i> Login &
                                                    Security</a>
                                            </div>
                                        </div></a>
                                    </li>
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
                                            <a href="#home">
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
                            </div>
                            <!-- mobile version navbar end -->
                        </div>
                    </div>
                </div>

                <div class="container ">
                    <div class="text">
                        <h2 class="hero-text">get your desired
                            <br>car in resonable price
                        </h2>
                        <p>Create lasting family memories.
                        <p> Choose your ideal vehicle for journeys together.</p>
                        </p>
                        <!-- <form action="index.html" method="post" target="_blank"> -->
                        <div class="button">
                            <a href="tel:+9011781933" href="#Contact"><button class="btn1" name="contact_Us">Contact
                                    Us</button></a>
                        </div>
                        <!-- </form> -->
                    </div>
                    
                    <div class="list">
                        <div class="box">
                        <form action="CarSerach" method="post">
                            <table class="none">
                                <tr>
                                    <th class="none">Select Year</th>
                                    <th>Select Make</th>
                                    <th>Select Modal</th>
                                </tr>
                                <tr class="droupdown">
                                    <td>
                                        <select class="none" name="car_make_year">
                                            <option value="default">Year</option>
                                            <option value="2023">2023</option>
                                            <option value="2022">2022</option>
                                            <option value="2021">2021</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select name="">
                                            <option value="default">make</option>

                                            <option value="Mahindra">Mahindra</option>

                                            <option value="suzuki">suzuki</option>
                                            <option value="TATA">TATA</option>

                                        </select>
                                    </td>
                                    <td>
                                        <select>
                                            <option value="default">model</option>

                                            <option value="sedan">sedan</option>

                                            <option value="SUV">SUV</option>
                                            <option value="ford">ford</option>
                                        </select>
                                    </td>
                                </tr>

                                <tr>
                                    <th class="none">Body Style</th>
                                    <th class="none"> Car Condition</th>
                                    <th>Select Price</th>
                                </tr>
                                <tr class="droupdown">
                                    <td>
                                        <select class="none">
                                            <option value="default">style</option>

                                            <option value="sedan">sedan</option>
                                            <option value="van">van</option>
                                            <option value="roadster">roadster</option>

                                        </select>
                                    </td>
                                    <td>
                                        <select class="none">
                                            <option value="default">condition</option>

                                            <option value="new">new</option>

                                            <option value="new">new</option>
                                            <option value="new">new</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select>


                                            <option value="default">price</option>

                                            <option value="5Lac">5lac</option>

                                            <option value="10lac">10lac</option>
                                            <option value="15lac > ">15lac ></option>

                                        </select>
                                    </td>
                                </tr>
                            </table>
						</form>
						
                            <!-- Mobile responsive -->

                            <table class="no-visible">
                                <tr>
                                    <td>
                                        <select>
                                            <option value="default">make</option>

                                            <option value="Mahindra">Mahindra</option>

                                            <option value="suzuki">suzuki</option>
                                            <option value="TATA">TATA</option>

                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td id="rearrage1">
                                        <select class="no-visible">
                                            <option value="default">style</option>

                                            <option value="sedan">sedan</option>
                                            <option value="van">van</option>
                                            <option value="roadster">roadster</option>

                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <select class="no-visible" id="rearrage">


                                            <option value="default">price</option>

                                            <option value="5Lac">5lac</option>

                                            <option value="10lac">10lac</option>
                                            <option value="15lac > ">15lac ></option>

                                        </select>
                                    </td>
                                </tr>
                            </table>

                            <div class="search">
                                <a href="" target="_blank"><button type="submit" class="btn2" name="search">Search</button></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>

    <section id="service">
        <main>
            <div class="box221">
                <div class="inner">
                    <div class="logo">
                        <a href="./service/paint.jsp"><img src="assets/logo/bx-car.svg" alt="car imgae"></a>
                    </div>
                    <div class="service-text">
                        <a href="./service/paint.jsp">Paint car</a>
                    </div>
                    <div class="main-text">
                        <p>Professional car painting service for flawless finish, Expert painter, Premium Paint.</p>
                    </div>
                    <div class="line">
                        <hr>
                    </div>
                </div>
            </div>

            <div class="box221">
                <div class="inner">
                    <div class="logo">
                        <a href="./services/Repair.php"><img src="assets/logo/repair.png" alt="car imgae"></a>
                    </div>
                    <div class="service-text">
                        <a href="./services/Repair.php">Repair car</a>
                    </div>
                    <div class="main-text">
                        <p>Reliable car repair guranteed satisfaction. Expert mechanics specializing in all makes and model
                        </p>
                    </div>
                    <div class="line">
                        <hr>
                    </div>
                </div>
            </div>

            <div class="box221">
                <div class="inner">
                    <div class="logo">
                        <a href="./services/washing.php"><img src="assets/logo/agreement.png" alt=""></a>
                    </div>
                    <div class="service-text">
                        <a href="./services/washing.php">Wash cars</a>
                    </div>
                    <div class="main-text">
                        <p>Sparkling clean cars, guranteed. Professional car wahes, affordable prices. we treat your car like our car.</p>
                    </div>
                    <div class="line">
                        <hr>
                    </div>
                </div>
            </div>
        </main>
    </section>

    <section>
        <div class="grey" id="new-cars">
            <div class="new-car">
                <p>Checkout the Latest Cars</p>
                <p>Newest Cars</p>
                <div class="dash">
                    <hr>
                </div>
            </div>
            <a href="./cars/scorpio-n.jsp">
                <div class="cars-box">
                    <img class="hero-car1" src="./assets/images/new_feature_cars/scorpio-n.jpeg" alt="">
                    <div class="car-detail">
                        <p class="car-name"><a href="./cars/scorpio-n.jsp">Mahendra Scorpio N</a></p>
                        <p class="car-text">
                            The Big Daddy of All SUVs Commanding outside. intelligent inside. The All-New Scorpion-N
                            makes every drive an experience with its unmissable design,thrillling perfomance, advanced,
                            technology, intutive features, superior comfort & safety. it truly is the Big Daddy of SUVs.
                        </p>
                        <p class="car-text2">
                            Price: The Scorpio Classic is priced between Rs 13.59 lakh and Rs 17.35 lakh (ex-showroom
                            Delhi).
                        </p>
                        <form action="./cars/scorpio-n.jsp" method="post" target="">
                            <button class="Viwe-Detail" value="">View Detail</button>
                        </form>
                    </div>
                </div>
            </a>


            <a href="./cars/car2.jsp">
                <div class="cars-box car-box1">
                    <img class="car2" src="./assets/images/new_feature_cars/punch.png" alt="">
                    <div class="car2-detail">
                        <p class="car2-name"><a href="./cars/car2.jsp">Tata Punch</a></p>
                        <p class="car2-text">
                            Presenting Tata PUNCH, the no-compromise SUV. The epitome of class that offers a blend of
                            sporty dynamics and tough utility
                        </p>
                        <p class="car2-text2">
                            Price: The Punch is priced from Rs 6.13 lakh to Rs 10.20 lakh (ex-showroom Delhi).
                        </p>
                        <form action="./cars/car2.jsp" method="post" target="">
                            <button class="Viwe-Detail1" style="cursor: pointer;">View Detail</button>
                        </form>
                    </div>
                </div>
            </a>

           <a href="./cars/car3.jsp">
                <div class="cars-box car-box2">
                    <img class="car3" src="./assets/images/new_feature_cars/thar.jpeg" alt="">
                    <div class="car3-detail">
                        <p class="car3-name"><a href="./cars/car2.jsp"> Mahindra Thar</a></p>
                        <p class="car3-text">
                            Like nothing on Earth
                            Introducing the Thar Earth Edition in the unique Satin Matte 'Desert Fury' colour, giving
                            the iconic SUV a standout appearance that commands attention.
                        </p>
                        <p class="car3-text2">
                            Latest Update: The Mahindra Thar Earth Edition has been launched. Here's a look at all the
                            new colours the Thar has got since its launch in 2020.
                        </p>
                        <form action="./cars/car2.jsp" method="post" target="">
                            <button class="Viwe-Detail " id="viweButton" value="">View Detail</button>
                        </form>

                    </div>
                </div>
            </a>

        </div>
    </section>


    <!--  Featured cars collection -->

    <section id="collection">
        <div class="featur-car" id="featured-cars">
            <div class="new-car">
                <p>Checkout the Featured Cars</p>
                <p>Featured Cars</p>
                <div class="dash">
                    <hr>
                </div>
            </div>

            <!-- first car collection row -->

            <div class="fcars">

                <div class="featur-car-image-box1">
                    <div class="featur-car-image-box">
                        <div class="featur-car-image">
                            <img src="./assets/images/feature_car/harrier.png" alt="">
                        </div>
                    </div>
                </div>

                <div class="featur-car-image-box1">
                    <div class="featur-car-image-box">
                        <div class="featur-car-image">
                            <img src="./assets/images/feature_car/Tata-Nexon.png" alt="">
                        </div>
                    </div>
                </div>

                <div class="featur-car-image-box1">
                    <div class="featur-car-image-box">
                        <div class="featur-car-image">
                            <img src="./assets/images/feature_car/safari.jpeg" alt="">
                        </div>
                    </div>
                </div>

                <div class="featur-car-image-box1">
                    <div class="featur-car-image-box">
                        <div class="featur-car-image">
                            <img src="./assets/images/feature_car/brezza.jpeg" alt="">
                        </div>
                    </div>
                </div>
            </div>

            <div class="feature-text-box">

                <div class="featur-car-text">
                    <p>Model: 2023 TATA Harrier Smart Manual</p>
                    <p><a href="./cars/car4.jsp">Tata Harrier</a></p>
                    <p class="price">₹15,49 Lakh</p>
                    <p class="decribe">The New Harrier
                        The New Harrier symbolizes the unwavering spirit of young achievers in its latest avatar..</p>
                </div>

                <div class="featur-car-text">
                    <p>Model: 2023 Nexon Smart Manual</p>
                    <p><a href="./cars/car5.jsp">Tata Nexon</a></p>
                    <p class="price">₹8.15 Lakh</span>
                    <p class="decribe">New Nexon with its raised hood, sleek lamps and dynamic stance gives it an
                        aggressive SUV style. The signature X factor of Nexon has become futuristic.</p>
                </div>

                <div class="featur-car-text">
                    <p>Model: 2023 Safari Smart Manual</p>
                    <p><a href="./cars/car6.jsp">Tata Safari</a></p>
                    <p class="price">₹16.9 Lakh</p>
                    <p class="decribe">The New Safari
                        The New Safari carries on the legendary lineage with contemporary and premium updates.</p>
                </div>

                <div class="featur-car-text">
                    <p>Model: 2022 Brezza Lxi Manual </p>
                    <p><a href="./cars/car7.jsp">Maruti Vitara Brezza</a></p>
                    <p class="price">₹7.84 Lakh</p>
                    <p class="decribe">NMake a statement with Dual Tone Colours, a hard-to-miss Shark Finn Antenna and
                        Bold Geometric Alloy Wheels that command the roads.</p>
                </div>
            </div>


            <!--
                Second car collection row
            -->
            <div class="fcars second-box">

                <div class="featur-car-image-box1">
                    <div class="featur-car-image-box">
                        <div class="featur-car-image">
                            <img src="./assets/images/feature_car/xuv700.jpeg" alt="">
                        </div>
                    </div>
                </div>

                <div class="featur-car-image-box1">
                    <div class="featur-car-image-box">
                        <div class="featur-car-image">
                            <img src="./assets/images/feature_car/grand.jpeg" alt="">
                        </div>
                    </div>
                </div>

                <div class="featur-car-image-box1">
                    <div class="featur-car-image-box">
                        <div class="featur-car-image">
                            <img src="./assets/images/feature_car/tata-altroz.jpeg" alt="">
                        </div>
                    </div>
                </div>

                <div class="featur-car-image-box1">
                    <div class="featur-car-image-box">
                        <div class="featur-car-image">
                            <img src="./assets/images/feature_car/fronx.jpeg" alt="">
                        </div>
                    </div>
                </div>
            </div>

            <div class="feature-text-box  top">

                <div class="featur-car-text">
                    <p>Model: 2021 XUV700 MX Manual</p>
                    <p><a href="./cars/car8.jsp">HELLO XUV700</a></p>
                    <p class="price">₹13.99 Lakh</p>
                    <p class="decribe">A New Era of Excellence
                        With its Sci-Fi Technology, Spirited Performance and World-Class Safety, this powerhouse of an
                        SUV is obsessively engineered to dial up adrenaline like never before.</p>
                </div>

                <div class="featur-car-text">
                    <p>Model: 2024 Sigma Sigma Manual </p>
                    <p><a href="./cars/car9.jsp">Maruti Grand Vitara</a></p>
                    <p class="price">₹10.87 Lakh</span>
                    <p class="decribe">Every road is a new story, a new discovery and there is a new breed of SUVs that
                        can conquer them all. It is the Advanced Grand Vitara and it’s here to Rule Every Road.</p>
                </div>

                <div class="featur-car-text">
                    <p>Model: 2020 ALFA XE Petrol Manual</p>
                    <p><a href="./cars/car10.jsp">Tata Altroz</a></p>
                    <p class="price">₹6.65 Lakh</p>
                    <p class="decribe">Where elegance meets versatility, this stunning hatchback embodies both style and
                        functionality. With its luxurious features, seamless connectivity, and impressive performance,
                        ALTROZ sets.</p>
                </div>

                <div class="featur-car-text">
                    <p>Model: 2023 Sigma Sigma Manual</p>
                    <p><a href="./cars/car11.jsp">Maruti Fronx</a></p>
                    <p class="price">₹7.51 Lakh</p>
                    <p class="decribe">Maruti Fronx price for the base model starts at Rs. 9.01 Lakh and the top model
                        price goes upto Rs. 15.99 Lakh (on-road Bangalore). Fronx price for 13 variants is listed below.
                    </p>
                </div>
            </div>


        </div>
        </div>
    </section>

    <section>
        <footer>
            <div class="footer" id="contact">
                <img src="./assets/images/footer/footer_bg.png" alt="">

                <div class="footer-text-box">
                    <div class="footer-text">
                        <h3>Follow Us</h3>
                        <a href="#"><img src="./assets/logo/facebook.svg" alt="image"></a>
                        <a href="#"><img class="adj" src="./assets/logo/x.svg" alt="image"></a>
                        <a href="#"><img src="./assets/logo/insta.svg" alt="image"></a>
                        <a href="#"><img src="./assets/logo/youtube.svg" alt="image"></a>

                        <form action="contact-redirect.php" method="post">
                            <div class="contact-detail">
                                <div><img src="./assets/logo/phone.svg" alt=""><a href="">Call
                                        +919011781933</a></div>
                                <div><img src="./assets/logo/mail.svg" alt=""><a name="email-contact"
                                        href=""> mayurmyana111@gmail.com</a>
                                </div>
                            </div>
                        </form>
                        <div>
                            <ul class="footer-nav">
                                <li><a href="#home">home</a></li>
                                <li><a href="#service">service</a></li>
                                <li><a href="#featured-cars">featured cars</a></li>
                                <li><a href="#new-cars">new cars</a></li>
                                <li><a class="active" href="#contact">contact</a></li>
                            </ul>
                        </div>
                        <div class="copyRight">
                            <p>&copy; 2050 All Rights Reseverd. 🚩<b>ॐ</b> 🚩</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>



        <!-- Mobile versio footer -->
        <div class="footer_bg4">
            <div class="navbar-brand2">
                CarVilla
            </div>
            <div class="about">
                <p aria-placeholder="website"><a class="about-contact" href="CarVilla.com">CarVilla.com</a></p>
                <p aria-placeholder="contact"><a class="about-contact" href="tel:+9011781933">+9011781933</a></p>
            </div>
            <div>
                <h4 class="about-txt">ABOUT DEVLOON</h4>
                <ul class="footer-nav">
                    <li><a class="active" href="#home">home</a></li>
                    <li><a href="#service">service</a></li>
                    <li><a href="#featured-cars">featured cars</a></li>
                    <li><a href="#new-cars">new cars</a></li>
                    <li><a href="#contact">contact</a></li>
                </ul>
            </div>
            <div class="email-input">
                <h4 id="news-letter">NEWS LETTER</h4>
                <p>Subcribe to get lates news update and information</p>
                <div class="inputbox">
                    <input required="required" type="text">
                    <span>Email</span>
                    <i></i>
                </div>
            </div>
            <hr class="footer-line">
            <div class="copyRight">
                <p>&copy; Copright Designed And Developed By <span><br></span> THRILLS. 🚩<b>ॐ</b> 🚩</p>
            </div>
            <div class="footer-icon">

                <a href="#"><img src="./assets/logo/facebook.svg" alt="image"></a>
                <a href="#"><img class="adj" src="./assets/logo/x.svg" alt="image"></a>
                <a href="#"><img src="./assets/logo/insta.svg" alt="image"></a>
                <a href="#"><img src="./assets/logo/youtube.svg" alt="image"></a>

            </div>
        </div>

        <script>
            window.onload = function () {
                var loadingContainer = document.getElementById("loader-container");
                loadingContainer.style.display = "none";
            }
        </script>
        <script>
            window.embeddedChatbotConfig = {
            chatbotId: "tfbAZrzf2i5KRfdA28MOT",
            domain: "www.chatbase.co"
            }
            </script>
            <script
            src="https://www.chatbase.co/embed.min.js"
            chatbotId="tfbAZrzf2i5KRfdA28MOT"
            domain="www.chatbase.co"
            defer>
            </script>
</body>

</html>