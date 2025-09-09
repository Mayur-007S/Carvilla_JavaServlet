<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CARVILLA - Professional Car Paint Services</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        .car-image {
            filter: hue-rotate(0deg);
            transition: filter 0.5s ease;
        }
        .testimonial-card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .testimonial-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        }
        .paint-option {
            transition: all 0.3s ease;
        }
        .paint-option:hover {
            transform: scale(1.03);
        }
        .paint-option.selected {
            border-color: #3b82f6;
            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.3);
        }
    </style>
</head>
<body class="bg-gray-50">
    <!-- Header -->
    <header class="bg-blue-900 text-white">
        <div class="container mx-auto px-4 py-6">
            <div class="flex justify-between items-center">
                <div class="flex items-center">
                    <i class="fas fa-car text-3xl mr-3 text-blue-300"></i>
                    <h1 class="text-2xl font-bold">CARVILLA Pro</h1>
                </div>
                <nav>
                    <ul class="flex space-x-6">
                        <li><a href="#" class="hover:text-blue-300 transition">Home</a></li>
                        <li><a href="#" class="hover:text-blue-300 transition">Services</a></li>
                        <li><a href="#" class="hover:text-blue-300 transition">Bookings</a></li>
                        <li><a href="#" class="hover:text-blue-300 transition">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="bg-gradient-to-r from-blue-800 to-blue-600 text-white py-16">
        <div class="container mx-auto px-4 text-center">
            <h2 class="text-4xl font-bold mb-4">Professional Car Paint Services</h2>
            <p class="text-xl mb-8 max-w-2xl mx-auto">Transform your vehicle with our premium paint services. Choose from our range of colors and service packages to give your car a fresh new look.</p>
            <button class="bg-yellow-500 hover:bg-yellow-600 text-blue-900 font-bold py-3 px-8 rounded-full transition duration-300 transform hover:scale-105">
                Book Now
            </button>
        </div>
    </section>

    <!-- Main Content -->
    <main class="container mx-auto px-4 py-12">
        <div class="flex flex-col lg:flex-row gap-12">
            <!-- Car Color Selection -->
            <div class="lg:w-1/2">
                <div class="bg-white rounded-xl shadow-lg p-6 mb-8">
                    <h3 class="text-2xl font-bold mb-6 text-blue-900">Visualize Your New Color</h3>
                    
                    <!-- Car Image -->
                    <div class="relative mb-8">
                        <img id="car-image" src="https://images.unsplash.com/photo-1541899481282-d53bffe3c35d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=800&q=80" 
                             alt="Car to be painted" class="car-image w-full h-auto rounded-lg">
                        <div class="absolute bottom-0 left-0 right-0 bg-gradient-to-t from-black/70 to-transparent p-4 rounded-b-lg">
                            <p class="text-white font-medium" id="current-color">Current Color: Classic Red</p>
                        </div>
                    </div>
                    
                    <!-- Color Picker -->
                    <div class="mb-8">
                        <h4 class="text-lg font-semibold mb-4 text-gray-800">Select Your Color</h4>
                        <div class="grid grid-cols-5 sm:grid-cols-7 md:grid-cols-9 gap-3">
                            <button onclick="changeCarColor('red', 'Classic Red')" class="w-10 h-10 rounded-full bg-red-600 border-2 border-gray-200 hover:border-blue-500 transition"></button>
                            <button onclick="changeCarColor('blue', 'Ocean Blue')" class="w-10 h-10 rounded-full bg-blue-600 border-2 border-gray-200 hover:border-blue-500 transition"></button>
                            <button onclick="changeCarColor('green', 'Emerald Green')" class="w-10 h-10 rounded-full bg-green-600 border-2 border-gray-200 hover:border-blue-500 transition"></button>
                            <button onclick="changeCarColor('yellow', 'Sunshine Yellow')" class="w-10 h-10 rounded-full bg-yellow-400 border-2 border-gray-200 hover:border-blue-500 transition"></button>
                            <button onclick="changeCarColor('black', 'Midnight Black')" class="w-10 h-10 rounded-full bg-gray-900 border-2 border-gray-200 hover:border-blue-500 transition"></button>
                            <button onclick="changeCarColor('white', 'Pearl White')" class="w-10 h-10 rounded-full bg-gray-100 border-2 border-gray-200 hover:border-blue-500 transition"></button>
                            <button onclick="changeCarColor('purple', 'Royal Purple')" class="w-10 h-10 rounded-full bg-purple-600 border-2 border-gray-200 hover:border-blue-500 transition"></button>
                            <button onclick="changeCarColor('orange', 'Fiery Orange')" class="w-10 h-10 rounded-full bg-orange-500 border-2 border-gray-200 hover:border-blue-500 transition"></button>
                            <button onclick="changeCarColor('gray', 'Titanium Gray')" class="w-10 h-10 rounded-full bg-gray-500 border-2 border-gray-200 hover:border-blue-500 transition"></button>
                        </div>
                    </div>
                    
                    <!-- Custom Color Picker -->
                    <div>
                        <h4 class="text-lg font-semibold mb-4 text-gray-800">Or Choose Custom Color</h4>
                        <div class="flex items-center gap-4">
                            <input type="color" id="custom-color" value="#ff0000" class="w-16 h-16 cursor-pointer">
                            <button onclick="applyCustomColor()" class="bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded-lg transition">
                                Apply Color
                            </button>
                        </div>
                    </div>
                </div>
                
                <!-- Paint Service Options -->
                <div class="bg-white rounded-xl shadow-lg p-6">
                    <h3 class="text-2xl font-bold mb-6 text-blue-900">Our Paint Service Packages</h3>
                    
                    <div class="space-y-4">
                        <!-- Standard Option -->
                        <div id="standard" onclick="selectService('standard')" class="paint-option p-6 border-2 border-gray-200 rounded-lg cursor-pointer hover:bg-blue-50">
                            <div class="flex justify-between items-start">
                                <div>
                                    <h4 class="text-xl font-bold text-gray-800">Standard Paint</h4>
                                    <p class="text-gray-600">Basic color change with 1-year warranty</p>
                                </div>
                                <span class="text-2xl font-bold text-blue-900">$299</span>
                            </div>
                            <ul class="mt-4 space-y-2 text-gray-700">
                                <li class="flex items-center"><i class="fas fa-check-circle text-green-500 mr-2"></i> Single-layer paint application</li>
                                <li class="flex items-center"><i class="fas fa-check-circle text-green-500 mr-2"></i> Standard color options</li>
                                <li class="flex items-center"><i class="fas fa-check-circle text-green-500 mr-2"></i> 1-year warranty</li>
                                <li class="flex items-center"><i class="fas fa-check-circle text-green-500 mr-2"></i> Basic surface preparation</li>
                            </ul>
                        </div>
                        
                        <!-- Advanced Option -->
                        <div id="advanced" onclick="selectService('advanced')" class="paint-option p-6 border-2 border-gray-200 rounded-lg cursor-pointer hover:bg-blue-50">
                            <div class="flex justify-between items-start">
                                <div>
                                    <h4 class="text-xl font-bold text-gray-800">Advanced Paint</h4>
                                    <p class="text-gray-600">Premium finish with 3-year warranty</p>
                                </div>
                                <span class="text-2xl font-bold text-blue-900">$599</span>
                            </div>
                            <ul class="mt-4 space-y-2 text-gray-700">
                                <li class="flex items-center"><i class="fas fa-check-circle text-green-500 mr-2"></i> Two-layer paint application</li>
                                <li class="flex items-center"><i class="fas fa-check-circle text-green-500 mr-2"></i> Premium color options</li>
                                <li class="flex items-center"><i class="fas fa-check-circle text-green-500 mr-2"></i> 3-year warranty</li>
                                <li class="flex items-center"><i class="fas fa-check-circle text-green-500 mr-2"></i> Advanced surface preparation</li>
                                <li class="flex items-center"><i class="fas fa-check-circle text-green-500 mr-2"></i> Minor dent repair included</li>
                            </ul>
                        </div>
                        
                        <!-- Master Option -->
                        <div id="master" onclick="selectService('master')" class="paint-option p-6 border-2 border-gray-200 rounded-lg cursor-pointer hover:bg-blue-50">
                            <div class="flex justify-between items-start">
                                <div>
                                    <h4 class="text-xl font-bold text-gray-800">Master Paint</h4>
                                    <p class="text-gray-600">Showroom quality with 5-year warranty</p>
                                </div>
                                <span class="text-2xl font-bold text-blue-900">$999</span>
                            </div>
                            <ul class="mt-4 space-y-2 text-gray-700">
                                <li class="flex items-center"><i class="fas fa-check-circle text-green-500 mr-2"></i> Three-layer paint application</li>
                                <li class="flex items-center"><i class="fas fa-check-circle text-green-500 mr-2"></i> All color options including custom</li>
                                <li class="flex items-center"><i class="fas fa-check-circle text-green-500 mr-2"></i> 5-year warranty</li>
                                <li class="flex items-center"><i class="fas fa-check-circle text-green-500 mr-2"></i> Complete surface restoration</li>
                                <li class="flex items-center"><i class="fas fa-check-circle text-green-500 mr-2"></i> Dent and scratch repair included</li>
                                <li class="flex items-center"><i class="fas fa-check-circle text-green-500 mr-2"></i> Ceramic coating option</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Booking Form -->
            <div class="lg:w-1/2">
                <div class="bg-white rounded-xl shadow-lg p-6 sticky top-6">
                    <h3 class="text-2xl font-bold mb-6 text-blue-900">Book Your Paint Service</h3>
                    
                    <form id="booking-form" class="space-y-6">
                        <div>
                            <label for="full-name" class="block text-gray-700 font-medium mb-2">Full Name</label>
                            <input type="text" id="full-name" required class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
                        </div>
                        
                        <div>
                            <label for="email" class="block text-gray-700 font-medium mb-2">Email Address</label>
                            <input type="email" id="email" required class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
                        </div>
                        
                        <div>
                            <label for="phone" class="block text-gray-700 font-medium mb-2">Phone Number</label>
                            <input type="tel" id="phone" required class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
                        </div>
                        
                        <div>
                            <label for="car-model" class="block text-gray-700 font-medium mb-2">Car Model</label>
                            <input type="text" id="car-model" required class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
                        </div>
                        
                        <div>
                            <label for="car-year" class="block text-gray-700 font-medium mb-2">Car Year</label>
                            <input type="number" id="car-year" min="1900" max="2023" required class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
                        </div>
                        
                        <div>
                            <label for="service-type" class="block text-gray-700 font-medium mb-2">Selected Service</label>
                            <input type="text" id="service-type" readonly value="Not selected" class="w-full px-4 py-2 border border-gray-300 rounded-lg bg-gray-100">
                        </div>
                        
                        <div>
                            <label for="selected-color" class="block text-gray-700 font-medium mb-2">Selected Color</label>
                            <input type="text" id="selected-color" readonly value="Not selected" class="w-full px-4 py-2 border border-gray-300 rounded-lg bg-gray-100">
                        </div>
                        
                        <div>
                            <label for="appointment-date" class="block text-gray-700 font-medium mb-2">Preferred Date</label>
                            <input type="date" id="appointment-date" required class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
                        </div>
                        
                        <div>
                            <label for="special-requests" class="block text-gray-700 font-medium mb-2">Special Requests</label>
                            <textarea id="special-requests" rows="3" class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"></textarea>
                        </div>
                        
                        <button type="submit" class="w-full bg-blue-600 hover:bg-blue-700 text-white font-bold py-3 px-4 rounded-lg transition duration-300 transform hover:scale-105">
                            Confirm Booking
                        </button>
                    </form>
                </div>
            </div>
        </div>
        
        <!-- Testimonials Section -->
        <section class="mt-20">
            <h3 class="text-3xl font-bold text-center mb-12 text-blue-900">What Our Customers Say</h3>
            
            <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
                <!-- Testimonial 1 -->
                <div class="testimonial-card bg-white p-6 rounded-xl shadow-lg">
                    <div class="flex items-center mb-4">
                        <div class="w-12 h-12 rounded-full bg-blue-100 flex items-center justify-center text-blue-600 font-bold text-xl mr-4">JD</div>
                        <div>
                            <h4 class="font-bold text-gray-800">John D.</h4>
                            <div class="flex text-yellow-400">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <p class="text-gray-600">"The master paint service transformed my 10-year-old car into something that looks brand new. The color is perfect and the finish is flawless. Worth every penny!"</p>
                </div>
                
                <!-- Testimonial 2 -->
                <div class="testimonial-card bg-white p-6 rounded-xl shadow-lg">
                    <div class="flex items-center mb-4">
                        <div class="w-12 h-12 rounded-full bg-blue-100 flex items-center justify-center text-blue-600 font-bold text-xl mr-4">SM</div>
                        <div>
                            <h4 class="font-bold text-gray-800">Sarah M.</h4>
                            <div class="flex text-yellow-400">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <p class="text-gray-600">"I chose the advanced package and couldn't be happier. The team was professional, the work was done on time, and my car has never looked better. Highly recommend!"</p>
                </div>
                
                <!-- Testimonial 3 -->
                <div class="testimonial-card bg-white p-6 rounded-xl shadow-lg">
                    <div class="flex items-center mb-4">
                        <div class="w-12 h-12 rounded-full bg-blue-100 flex items-center justify-center text-blue-600 font-bold text-xl mr-4">RT</div>
                        <div>
                            <h4 class="font-bold text-gray-800">Robert T.</h4>
                            <div class="flex text-yellow-400">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                            </div>
                        </div>
                    </div>
                    <p class="text-gray-600">"Great service at a reasonable price. Went with the standard option and it's held up well for over a year now. The color visualization tool helped me pick the perfect shade."</p>
                </div>
            </div>
        </section>
        
        <!-- FAQ Section -->
        <section class="mt-20">
            <h3 class="text-3xl font-bold text-center mb-12 text-blue-900">Frequently Asked Questions</h3>
            
            <div class="max-w-3xl mx-auto space-y-4">
                <div class="border border-gray-200 rounded-lg overflow-hidden">
                    <button class="faq-question w-full text-left p-4 bg-gray-50 hover:bg-gray-100 font-medium flex justify-between items-center">
                        How long does a paint job typically take?
                        <i class="fas fa-chevron-down transition-transform duration-300"></i>
                    </button>
                    <div class="faq-answer p-4 bg-white hidden">
                        <p class="text-gray-700">The duration depends on the service package you choose. Standard paint jobs typically take 2-3 days, advanced packages take 3-5 days, and master packages can take 5-7 days. We'll provide a more accurate timeline when we assess your vehicle.</p>
                    </div>
                </div>
                
                <div class="border border-gray-200 rounded-lg overflow-hidden">
                    <button class="faq-question w-full text-left p-4 bg-gray-50 hover:bg-gray-100 font-medium flex justify-between items-center">
                        Will the new paint match my car's original color?
                        <i class="fas fa-chevron-down transition-transform duration-300"></i>
                    </button>
                    <div class="faq-answer p-4 bg-white hidden">
                        <p class="text-gray-700">Yes, we can match your car's original color perfectly. For standard colors, we use manufacturer codes. For custom colors, we use advanced color-matching technology to ensure an exact match.</p>
                    </div>
                </div>
                
                <div class="border border-gray-200 rounded-lg overflow-hidden">
                    <button class="faq-question w-full text-left p-4 bg-gray-50 hover:bg-gray-100 font-medium flex justify-between items-center">
                        How should I prepare my car for painting?
                        <i class="fas fa-chevron-down transition-transform duration-300"></i>
                    </button>
                    <div class="faq-answer p-4 bg-white hidden">
                        <p class="text-gray-700">Just bring your car in clean and empty of personal items. We handle all the preparation including washing, sanding, and masking. If there are specific areas of concern, please let us know during your consultation.</p>
                    </div>
                </div>
                
                <div class="border border-gray-200 rounded-lg overflow-hidden">
                    <button class="faq-question w-full text-left p-4 bg-gray-50 hover:bg-gray-100 font-medium flex justify-between items-center">
                        What's included in the warranty?
                        <i class="fas fa-chevron-down transition-transform duration-300"></i>
                    </button>
                    <div class="faq-answer p-4 bg-white hidden">
                        <p class="text-gray-700">Our warranty covers peeling, fading, or bubbling of the paint under normal use conditions. The length of coverage depends on your service package: 1 year for standard, 3 years for advanced, and 5 years for master. The warranty doesn't cover damage from accidents, improper care, or environmental factors like hail.</p>
                    </div>
                </div>
            </div>
        </section>
    </main>
    
    <!-- Footer -->
    <footer class="bg-blue-900 text-white mt-20">
        <div class="container mx-auto px-4 py-12">
            <div class="grid md:grid-cols-4 gap-8">
                <div>
                    <h4 class="text-xl font-bold mb-4">AutoCare Pro</h4>
                    <p class="text-blue-200">Professional car care services to keep your vehicle looking and performing its best.</p>
                    <div class="flex space-x-4 mt-4">
                        <a href="#" class="text-blue-200 hover:text-white"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="text-blue-200 hover:text-white"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="text-blue-200 hover:text-white"><i class="fab fa-instagram"></i></a>
                        <a href="#" class="text-blue-200 hover:text-white"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
                
                <div>
                    <h4 class="text-lg font-bold mb-4">Services</h4>
                    <ul class="space-y-2">
                        <li><a href="#" class="text-blue-200 hover:text-white">Paint Services</a></li>
                        <li><a href="#" class="text-blue-200 hover:text-white">Detailing</a></li>
                        <li><a href="#" class="text-blue-200 hover:text-white">Body Repair</a></li>
                        <li><a href="#" class="text-blue-200 hover:text-white">Ceramic Coating</a></li>
                        <li><a href="#" class="text-blue-200 hover:text-white">Window Tinting</a></li>
                    </ul>
                </div>
                
                <div>
                    <h4 class="text-lg font-bold mb-4">Quick Links</h4>
                    <ul class="space-y-2">
                        <li><a href="#" class="text-blue-200 hover:text-white">About Us</a></li>
                        <li><a href="#" class="text-blue-200 hover:text-white">Our Team</a></li>
                        <li><a href="#" class="text-blue-200 hover:text-white">Testimonials</a></li>
                        <li><a href="#" class="text-blue-200 hover:text-white">Gallery</a></li>
                        <li><a href="#" class="text-blue-200 hover:text-white">Contact</a></li>
                    </ul>
                </div>
                
                <div>
                    <h4 class="text-lg font-bold mb-4">Contact Us</h4>
                    <ul class="space-y-2 text-blue-200">
                        <li class="flex items-center"><i class="fas fa-map-marker-alt mr-2"></i> 123 Auto Street, Carville</li>
                        <li class="flex items-center"><i class="fas fa-phone mr-2"></i> (555) 123-4567</li>
                        <li class="flex items-center"><i class="fas fa-envelope mr-2"></i> info@autocarepro.com</li>
                        <li class="flex items-center"><i class="fas fa-clock mr-2"></i> Mon-Fri: 8AM - 6PM</li>
                    </ul>
                </div>
            </div>
            
            <div class="border-t border-blue-800 mt-8 pt-8 text-center text-blue-300">
                <p>&copy; 2023 CARVILLA Pro. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script>
        // Color change functionality
        const colorDegrees = {
            'red': 0,
            'blue': 220,
            'green': 120,
            'yellow': 60,
            'black': 0,
            'white': 0,
            'purple': 270,
            'orange': 30,
            'gray': 0
        };
        
        const colorNames = {
            'red': 'Classic Red',
            'blue': 'Ocean Blue',
            'green': 'Emerald Green',
            'yellow': 'Sunshine Yellow',
            'black': 'Midnight Black',
            'white': 'Pearl White',
            'purple': 'Royal Purple',
            'orange': 'Fiery Orange',
            'gray': 'Titanium Gray'
        };
        
        function changeCarColor(color, name) {
            const carImage = document.getElementById('car-image');
            const currentColor = document.getElementById('current-color');
            const selectedColorInput = document.getElementById('selected-color');
            
            if (color === 'black') {
                carImage.style.filter = 'brightness(0.5)';
            } else if (color === 'white') {
                carImage.style.filter = 'brightness(1.5)';
            } else if (color === 'gray') {
                carImage.style.filter = 'grayscale(100%) brightness(0.7)';
            } else {
                carImage.style.filter = `hue-rotate(${colorDegrees[color]}deg)`;
            }
            
            currentColor.textContent = `Current Color: ${name}`;
            selectedColorInput.value = name;
        }
        
        function applyCustomColor() {
            const customColor = document.getElementById('custom-color').value;
            const carImage = document.getElementById('car-image');
            const currentColor = document.getElementById('current-color');
            const selectedColorInput = document.getElementById('selected-color');
            
            // Convert hex to HSL to get hue value
            const r = parseInt(customColor.substr(1, 2), 16) / 255;
            const g = parseInt(customColor.substr(3, 2), 16) / 255;
            const b = parseInt(customColor.substr(5, 2), 16) / 255;
            
            const max = Math.max(r, g, b);
            const min = Math.min(r, g, b);
            let h, s, l = (max + min) / 2;
            
            if (max === min) {
                h = 0; // achromatic
            } else {
                const d = max - min;
                s = l > 0.5 ? d / (2 - max - min) : d / (max + min);
                switch (max) {
                    case r: h = (g - b) / d + (g < b ? 6 : 0); break;
                    case g: h = (b - r) / d + 2; break;
                    case b: h = (r - g) / d + 4; break;
                }
                h /= 6;
            }
            
            const hue = Math.round(h * 360);
            carImage.style.filter = `hue-rotate(${hue}deg)`;
            
            currentColor.textContent = `Current Color: Custom (#${customColor.substr(1)})`;
            selectedColorInput.value = `Custom (#${customColor.substr(1)})`;
        }
        
        // Service selection functionality
        let selectedService = null;
        
        function selectService(serviceId) {
            // Remove selection from all options
            document.querySelectorAll('.paint-option').forEach(option => {
                option.classList.remove('selected');
                option.classList.remove('bg-blue-50');
                option.classList.add('hover:bg-blue-50');
            });
            
            // Add selection to clicked option
            const selectedOption = document.getElementById(serviceId);
            selectedOption.classList.add('selected');
            selectedOption.classList.add('bg-blue-50');
            selectedOption.classList.remove('hover:bg-blue-50');
            
            // Update form field
            const serviceTypeInput = document.getElementById('service-type');
            switch(serviceId) {
                case 'standard':
                    serviceTypeInput.value = 'Standard Paint ($299)';
                    break;
                case 'advanced':
                    serviceTypeInput.value = 'Advanced Paint ($599)';
                    break;
                case 'master':
                    serviceTypeInput.value = 'Master Paint ($999)';
                    break;
            }
            
            selectedService = serviceId;
        }
        
        // Form submission
        document.getElementById('booking-form').addEventListener('submit', function(e) {
            e.preventDefault();
            
            // Validate service selection
            if (!selectedService) {
                alert('Please select a paint service package.');
                return;
            }
            
            // Validate color selection
            const selectedColor = document.getElementById('selected-color').value;
            if (selectedColor === 'Not selected') {
                alert('Please select a color for your car.');
                return;
            }
            
            // In a real application, you would send this data to your server
            alert('Thank you for your booking! We will contact you shortly to confirm your appointment.');
            this.reset();
            
            // Reset selections
            document.querySelectorAll('.paint-option').forEach(option => {
                option.classList.remove('selected');
                option.classList.remove('bg-blue-50');
                option.classList.add('hover:bg-blue-50');
            });
            document.getElementById('service-type').value = 'Not selected';
            document.getElementById('selected-color').value = 'Not selected';
            document.getElementById('car-image').style.filter = 'hue-rotate(0deg)';
            document.getElementById('current-color').textContent = 'Current Color: Classic Red';
            selectedService = null;
        });
        
        // FAQ accordion functionality
        document.querySelectorAll('.faq-question').forEach(question => {
            question.addEventListener('click', function() {
                const answer = this.nextElementSibling;
                const icon = this.querySelector('i');
                
                // Toggle answer visibility
                answer.classList.toggle('hidden');
                
                // Rotate icon
                if (answer.classList.contains('hidden')) {
                    icon.style.transform = 'rotate(0deg)';
                } else {
                    icon.style.transform = 'rotate(180deg)';
                }
            });
        });
    </script>
</body>
</html>