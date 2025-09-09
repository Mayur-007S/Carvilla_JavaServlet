<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile | CARVILLA</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        .profile-pic-container {
            position: relative;
            display: inline-block;
        }
        
        .profile-pic-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            opacity: 0;
            transition: opacity 0.3s ease;
        }
        
        .profile-pic-container:hover .profile-pic-overlay {
            opacity: 1;
        }
        
        .booking-card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        
        .booking-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }
        
        .tab-content {
            display: none;
        }
        
        .tab-content.active {
            display: block;
            animation: fadeIn 0.5s ease;
        }
        
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        
        .edit-form {
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.5s ease;
        }
        
        .edit-form.active {
            max-height: 600px;
        }
    </style>
</head>
<body class="bg-gray-100 font-sans">
    <!-- Header -->
    <header class="bg-indigo-600 text-white shadow-lg">
        <div class="container mx-auto px-4 py-4 flex justify-between items-center">
            <div class="flex items-center space-x-2">
                <i class="fas fa-plane-departure text-2xl"></i>
                <h1 class="text-xl font-bold">CARVILLA</h1>
            </div>
            <nav>
                <ul class="flex space-x-6">
                    <li><a href="#" class="hover:text-indigo-200 transition">Home</a></li>
                    <li><a href="#" class="hover:text-indigo-200 transition">Bookings</a></li>
                    <li><a href="#" class="hover:text-indigo-200 transition">Destinations</a></li>
                    <li><a href="#" class="hover:text-indigo-200 transition">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Main Content -->
    <main class="container mx-auto px-4 py-8">
        <div class="flex flex-col md:flex-row gap-8">
            <!-- Profile Sidebar -->
            <aside class="w-full md:w-1/3 lg:w-1/4">
                <div class="bg-white rounded-xl shadow-md overflow-hidden">
                    <!-- Profile Header -->
                    <div class="bg-indigo-500 p-6 text-center">
                        <div class="profile-pic-container mx-auto">
                            <img src="https://randomuser.me/api/portraits/women/44.jpg" alt="Profile" class="w-32 h-32 rounded-full border-4 border-white object-cover">
                            <div class="profile-pic-overlay">
                                <button onclick="document.getElementById('upload-photo').click()" class="text-white text-2xl">
                                    <i class="fas fa-camera"></i>
                                </button>
                                <input type="file" id="upload-photo" class="hidden" accept="image/*">
                            </div>
                        </div>
                        <h2 class="text-xl font-bold text-white mt-4">Sarah Johnson</h2>
                        <p class="text-indigo-100">Premium Member</p>
                    </div>
                    
                    <!-- Profile Info -->
                    <div class="p-6">
                        <div class="flex items-center mb-4">
                            <i class="fas fa-envelope text-indigo-500 mr-3"></i>
                            <span>sarah.johnson@example.com</span>
                        </div>
                        <div class="flex items-center mb-4">
                            <i class="fas fa-phone text-indigo-500 mr-3"></i>
                            <span>(555) 123-4567</span>
                        </div>
                        <div class="flex items-center mb-4">
                            <i class="fas fa-map-marker-alt text-indigo-500 mr-3"></i>
                            <span>New York, USA</span>
                        </div>
                        <div class="flex items-center mb-6">
                            <i class="fas fa-birthday-cake text-indigo-500 mr-3"></i>
                            <span>June 15, 1990</span>
                        </div>
                        
                        <!-- Social Media -->
                        <div class="mb-6">
                            <h3 class="font-semibold text-gray-700 mb-3">Connect with me</h3>
                            <div class="flex space-x-3">
                                <a href="#" class="w-8 h-8 rounded-full bg-blue-600 text-white flex items-center justify-center hover:bg-blue-700 transition">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                                <a href="#" class="w-8 h-8 rounded-full bg-blue-400 text-white flex items-center justify-center hover:bg-blue-500 transition">
                                    <i class="fab fa-twitter"></i>
                                </a>
                                <a href="#" class="w-8 h-8 rounded-full bg-pink-600 text-white flex items-center justify-center hover:bg-pink-700 transition">
                                    <i class="fab fa-instagram"></i>
                                </a>
                                <a href="#" class="w-8 h-8 rounded-full bg-blue-800 text-white flex items-center justify-center hover:bg-blue-900 transition">
                                    <i class="fab fa-linkedin-in"></i>
                                </a>
                            </div>
                        </div>
                        
                        <!-- Action Buttons -->
                        <button onclick="toggleEditForm()" class="w-full bg-indigo-600 text-white py-2 rounded-lg mb-3 hover:bg-indigo-700 transition flex items-center justify-center">
                            <i class="fas fa-user-edit mr-2"></i> Edit Profile
                        </button>
                        <button onclick="showContactForm()" class="w-full bg-gray-200 text-gray-800 py-2 rounded-lg mb-3 hover:bg-gray-300 transition flex items-center justify-center">
                            <i class="fas fa-headset mr-2"></i> Contact Us
                        </button>
                        <button onclick="logout()" class="w-full bg-red-500 text-white py-2 rounded-lg hover:bg-red-600 transition flex items-center justify-center">
                            <i class="fas fa-sign-out-alt mr-2"></i> Logout
                        </button>
                    </div>
                </div>
            </aside>
            
            <!-- Profile Content -->
            <div class="w-full md:w-2/3 lg:w-3/4">
                <!-- Edit Profile Form (Hidden by default) -->
                <div id="edit-form" class="edit-form bg-white rounded-xl shadow-md overflow-hidden mb-8">
                    <div class="p-6">
                        <h2 class="text-xl font-bold text-gray-800 mb-6">Edit Profile</h2>
                        <form>
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mb-4">
                                <div>
                                    <label class="block text-gray-700 mb-2">First Name</label>
                                    <input type="text" value="Sarah" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500">
                                </div>
                                <div>
                                    <label class="block text-gray-700 mb-2">Last Name</label>
                                    <input type="text" value="Johnson" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500">
                                </div>
                            </div>
                            <div class="mb-4">
                                <label class="block text-gray-700 mb-2">Email</label>
                                <input type="email" value="sarah.johnson@example.com" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500">
                            </div>
                            <div class="mb-4">
                                <label class="block text-gray-700 mb-2">Phone</label>
                                <input type="tel" value="(555) 123-4567" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500">
                            </div>
                            <div class="mb-4">
                                <label class="block text-gray-700 mb-2">Address</label>
                                <input type="text" value="123 Main St, New York, USA" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500">
                            </div>
                            <div class="mb-4">
                                <label class="block text-gray-700 mb-2">Date of Birth</label>
                                <input type="date" value="1990-06-15" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500">
                            </div>
                            <div class="flex justify-end space-x-3">
                                <button type="button" onclick="toggleEditForm()" class="px-4 py-2 border border-gray-300 rounded-lg hover:bg-gray-100 transition">Cancel</button>
                                <button type="button" onclick="saveProfile()" class="px-4 py-2 bg-indigo-600 text-white rounded-lg hover:bg-indigo-700 transition">Save Changes</button>
                            </div>
                        </form>
                    </div>
                </div>
                
                <!-- Contact Us Form (Hidden by default) -->
                <div id="contact-form" class="hidden bg-white rounded-xl shadow-md overflow-hidden mb-8">
                    <div class="p-6">
                        <h2 class="text-xl font-bold text-gray-800 mb-6">Contact Us</h2>
                        <form>
                            <div class="mb-4">
                                <label class="block text-gray-700 mb-2">Subject</label>
                                <input type="text" placeholder="What's this about?" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500">
                            </div>
                            <div class="mb-4">
                                <label class="block text-gray-700 mb-2">Message</label>
                                <textarea rows="4" placeholder="How can we help you?" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500"></textarea>
                            </div>
                            <div class="flex justify-end space-x-3">
                                <button type="button" onclick="hideContactForm()" class="px-4 py-2 border border-gray-300 rounded-lg hover:bg-gray-100 transition">Cancel</button>
                                <button type="button" onclick="submitContactForm()" class="px-4 py-2 bg-indigo-600 text-white rounded-lg hover:bg-indigo-700 transition">Send Message</button>
                            </div>
                        </form>
                    </div>
                </div>
                
                <!-- Tabs Navigation -->
                <div class="bg-white rounded-xl shadow-md overflow-hidden mb-6">
                    <div class="border-b border-gray-200">
                        <nav class="flex -mb-px">
                            <button onclick="switchTab('bookings')" class="tab-button py-4 px-6 text-center border-b-2 font-medium text-sm border-indigo-500 text-indigo-600">
                                <i class="fas fa-calendar-alt mr-2"></i> My Bookings
                            </button>
                            <button onclick="switchTab('favorites')" class="tab-button py-4 px-6 text-center border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300">
                                <i class="fas fa-heart mr-2"></i> Favorites
                            </button>
                            <button onclick="switchTab('reviews')" class="tab-button py-4 px-6 text-center border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300">
                                <i class="fas fa-star mr-2"></i> My Reviews
                            </button>
                            <button onclick="switchTab('settings')" class="tab-button py-4 px-6 text-center border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300">
                                <i class="fas fa-cog mr-2"></i> Settings
                            </button>
                        </nav>
                    </div>
                </div>
                
                <!-- Tab Contents -->
                <div id="bookings" class="tab-content active">
                    <h2 class="text-2xl font-bold text-gray-800 mb-6">My Bookings</h2>
                    
                    <!-- Booking Card 1 -->
                    <div class="booking-card bg-white rounded-xl shadow-md overflow-hidden mb-6">
                        <div class="md:flex">
                            <div class="md:w-1/3">
                                <img src="./assets/images/new_feature_cars/scorpio-n.jpeg" alt="Bali Resort" class="w-full h-full object-cover">
                            </div>
                            <div class="p-6 md:w-2/3">
                                <div class="flex justify-between items-start mb-2">
                                    <h3 class="text-xl font-bold text-gray-800">Luxury Villa in Bali</h3>
                                    <span class="bg-green-100 text-green-800 text-xs font-medium px-2.5 py-0.5 rounded">Completed</span>
                                </div>
                                <div class="flex items-center text-gray-600 mb-3">
                                    <i class="fas fa-map-marker-alt mr-2 text-indigo-500"></i>
                                    <span>Ubud, Bali, Indonesia</span>
                                </div>
                                <div class="grid grid-cols-2 gap-4 mb-4">
                                    <div>
                                        <p class="text-sm text-gray-500">Check-in</p>
                                        <p class="font-medium">Jun 12, 2023</p>
                                    </div>
                                    <div>
                                        <p class="text-sm text-gray-500">Check-out</p>
                                        <p class="font-medium">Jun 19, 2023</p>
                                    </div>
                                </div>
                                <div class="flex justify-between items-center">
                                    <div>
                                        <p class="text-sm text-gray-500">Total Price</p>
                                        <p class="text-xl font-bold text-indigo-600">$1,250</p>
                                    </div>
                                    <div class="flex space-x-2">
                                        <button class="px-4 py-2 border border-gray-300 rounded-lg hover:bg-gray-100 transition">View Details</button>
                                        <button class="px-4 py-2 bg-indigo-600 text-white rounded-lg hover:bg-indigo-700 transition">Book Again</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Booking Card 2 -->
                    <div class="booking-card bg-white rounded-xl shadow-md overflow-hidden mb-6">
                        <div class="md:flex">
                            <div class="md:w-1/3">
                                <img src="./assets/images/new_feature_cars/punch.png" alt="Paris Hotel" class="w-full h-full object-cover">
                            </div>
                            <div class="p-6 md:w-2/3">
                                <div class="flex justify-between items-start mb-2">
                                    <h3 class="text-xl font-bold text-gray-800">Boutique Hotel in Paris</h3>
                                    <span class="bg-yellow-100 text-yellow-800 text-xs font-medium px-2.5 py-0.5 rounded">Upcoming</span>
                                </div>
                                <div class="flex items-center text-gray-600 mb-3">
                                    <i class="fas fa-map-marker-alt mr-2 text-indigo-500"></i>
                                    <span>Montmartre, Paris, France</span>
                                </div>
                                <div class="grid grid-cols-2 gap-4 mb-4">
                                    <div>
                                        <p class="text-sm text-gray-500">Check-in</p>
                                        <p class="font-medium">Sep 5, 2023</p>
                                    </div>
                                    <div>
                                        <p class="text-sm text-gray-500">Check-out</p>
                                        <p class="font-medium">Sep 12, 2023</p>
                                    </div>
                                </div>
                                <div class="flex justify-between items-center">
                                    <div>
                                        <p class="text-sm text-gray-500">Total Price</p>
                                        <p class="text-xl font-bold text-indigo-600">$1,800</p>
                                    </div>
                                    <div class="flex space-x-2">
                                        <button class="px-4 py-2 border border-gray-300 rounded-lg hover:bg-gray-100 transition">View Details</button>
                                        <button class="px-4 py-2 bg-red-500 text-white rounded-lg hover:bg-red-600 transition">Cancel</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Booking Card 3 -->
                    <div class="booking-card bg-white rounded-xl shadow-md overflow-hidden">
                        <div class="md:flex">
                            <div class="md:w-1/3">
                                <img src="./assets/images/new_feature_cars/thar.jpeg" alt="Tokyo Apartment" class="w-full h-full object-cover">
                            </div>
                            <div class="p-6 md:w-2/3">
                                <div class="flex justify-between items-start mb-2">
                                    <h3 class="text-xl font-bold text-gray-800">Modern Apartment in Tokyo</h3>
                                    <span class="bg-blue-100 text-blue-800 text-xs font-medium px-2.5 py-0.5 rounded">Confirmed</span>
                                </div>
                                <div class="flex items-center text-gray-600 mb-3">
                                    <i class="fas fa-map-marker-alt mr-2 text-indigo-500"></i>
                                    <span>Shibuya, Tokyo, Japan</span>
                                </div>
                                <div class="grid grid-cols-2 gap-4 mb-4">
                                    <div>
                                        <p class="text-sm text-gray-500">Check-in</p>
                                        <p class="font-medium">Nov 15, 2023</p>
                                    </div>
                                    <div>
                                        <p class="text-sm text-gray-500">Check-out</p>
                                        <p class="font-medium">Nov 22, 2023</p>
                                    </div>
                                </div>
                                <div class="flex justify-between items-center">
                                    <div>
                                        <p class="text-sm text-gray-500">Total Price</p>
                                        <p class="text-xl font-bold text-indigo-600">$2,100</p>
                                    </div>
                                    <div class="flex space-x-2">
                                        <button class="px-4 py-2 border border-gray-300 rounded-lg hover:bg-gray-100 transition">View Details</button>
                                        <button class="px-4 py-2 bg-red-500 text-white rounded-lg hover:bg-red-600 transition">Cancel</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Favorites Tab -->
                <div id="favorites" class="tab-content">
                    <h2 class="text-2xl font-bold text-gray-800 mb-6">My Favorites</h2>
                    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                        <!-- Favorite Item 1 -->
                        <div class="bg-white rounded-xl shadow-md overflow-hidden hover:shadow-lg transition">
                            <img src="https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80" alt="Bali Resort" class="w-full h-48 object-cover">
                            <div class="p-4">
                                <div class="flex justify-between items-start">
                                    <h3 class="text-lg font-bold text-gray-800">Luxury Villa in Bali</h3>
                                    <button class="text-red-500 hover:text-red-600">
                                        <i class="fas fa-heart"></i>
                                    </button>
                                </div>
                                <div class="flex items-center text-gray-600 mb-2">
                                    <i class="fas fa-map-marker-alt mr-2 text-indigo-500 text-sm"></i>
                                    <span class="text-sm">Ubud, Bali</span>
                                </div>
                                <div class="flex justify-between items-center">
                                    <div>
                                        <p class="text-sm text-gray-500">From</p>
                                        <p class="font-bold text-indigo-600">$175/night</p>
                                    </div>
                                    <button class="px-3 py-1 bg-indigo-600 text-white text-sm rounded-lg hover:bg-indigo-700 transition">Book Now</button>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Favorite Item 2 -->
                        <div class="bg-white rounded-xl shadow-md overflow-hidden hover:shadow-lg transition">
                            <img src="https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80" alt="Paris Hotel" class="w-full h-48 object-cover">
                            <div class="p-4">
                                <div class="flex justify-between items-start">
                                    <h3 class="text-lg font-bold text-gray-800">Boutique Hotel in Paris</h3>
                                    <button class="text-red-500 hover:text-red-600">
                                        <i class="fas fa-heart"></i>
                                    </button>
                                </div>
                                <div class="flex items-center text-gray-600 mb-2">
                                    <i class="fas fa-map-marker-alt mr-2 text-indigo-500 text-sm"></i>
                                    <span class="text-sm">Montmartre, Paris</span>
                                </div>
                                <div class="flex justify-between items-center">
                                    <div>
                                        <p class="text-sm text-gray-500">From</p>
                                        <p class="font-bold text-indigo-600">$220/night</p>
                                    </div>
                                    <button class="px-3 py-1 bg-indigo-600 text-white text-sm rounded-lg hover:bg-indigo-700 transition">Book Now</button>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Favorite Item 3 -->
                        <div class="bg-white rounded-xl shadow-md overflow-hidden hover:shadow-lg transition">
                            <img src="https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80" alt="Tokyo Apartment" class="w-full h-48 object-cover">
                            <div class="p-4">
                                <div class="flex justify-between items-start">
                                    <h3 class="text-lg font-bold text-gray-800">Modern Apartment in Tokyo</h3>
                                    <button class="text-red-500 hover:text-red-600">
                                        <i class="fas fa-heart"></i>
                                    </button>
                                </div>
                                <div class="flex items-center text-gray-600 mb-2">
                                    <i class="fas fa-map-marker-alt mr-2 text-indigo-500 text-sm"></i>
                                    <span class="text-sm">Shibuya, Tokyo</span>
                                </div>
                                <div class="flex justify-between items-center">
                                    <div>
                                        <p class="text-sm text-gray-500">From</p>
                                        <p class="font-bold text-indigo-600">$250/night</p>
                                    </div>
                                    <button class="px-3 py-1 bg-indigo-600 text-white text-sm rounded-lg hover:bg-indigo-700 transition">Book Now</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Reviews Tab -->
                <div id="reviews" class="tab-content">
                    <h2 class="text-2xl font-bold text-gray-800 mb-6">My Reviews</h2>
                    
                    <!-- Review 1 -->
                    <div class="bg-white rounded-xl shadow-md p-6 mb-6">
                        <div class="flex justify-between items-start mb-4">
                            <div>
                                <h3 class="text-lg font-bold text-gray-800">Luxury Villa in Bali</h3>
                                <div class="flex items-center mt-1">
                                    <div class="flex text-yellow-400">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                    <span class="text-gray-500 text-sm ml-2">2 weeks ago</span>
                                </div>
                            </div>
                            <button class="text-gray-400 hover:text-gray-600">
                                <i class="fas fa-ellipsis-v"></i>
                            </button>
                        </div>
                        <p class="text-gray-700 mb-4">
                            "Absolutely stunning villa with breathtaking views. The service was impeccable and the location was perfect for exploring Ubud. Would definitely stay here again!"
                        </p>
                        <div class="flex justify-between items-center">
                            <div class="flex space-x-2">
                                <button class="text-gray-400 hover:text-indigo-600">
                                    <i class="far fa-thumbs-up"></i> <span class="text-sm">12</span>
                                </button>
                                <button class="text-gray-400 hover:text-indigo-600">
                                    <i class="far fa-comment"></i> <span class="text-sm">3</span>
                                </button>
                            </div>
                            <button class="text-indigo-600 hover:text-indigo-800 text-sm font-medium">
                                Edit Review
                            </button>
                        </div>
                    </div>
                    
                    <!-- Review 2 -->
                    <div class="bg-white rounded-xl shadow-md p-6">
                        <div class="flex justify-between items-start mb-4">
                            <div>
                                <h3 class="text-lg font-bold text-gray-800">Beach Resort in Maldives</h3>
                                <div class="flex items-center mt-1">
                                    <div class="flex text-yellow-400">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="far fa-star"></i>
                                    </div>
                                    <span class="text-gray-500 text-sm ml-2">1 month ago</span>
                                </div>
                            </div>
                            <button class="text-gray-400 hover:text-gray-600">
                                <i class="fas fa-ellipsis-v"></i>
                            </button>
                        </div>
                        <p class="text-gray-700 mb-4">
                            "The resort was beautiful and the overwater bungalow was a dream. The only downside was that the food options were limited and quite expensive. Otherwise, a wonderful experience."
                        </p>
                        <div class="flex justify-between items-center">
                            <div class="flex space-x-2">
                                <button class="text-gray-400 hover:text-indigo-600">
                                    <i class="far fa-thumbs-up"></i> <span class="text-sm">8</span>
                                </button>
                                <button class="text-gray-400 hover:text-indigo-600">
                                    <i class="far fa-comment"></i> <span class="text-sm">1</span>
                                </button>
                            </div>
                            <button class="text-indigo-600 hover:text-indigo-800 text-sm font-medium">
                                Edit Review
                            </button>
                        </div>
                    </div>
                </div>
                
                <!-- Settings Tab -->
                <div id="settings" class="tab-content">
                    <h2 class="text-2xl font-bold text-gray-800 mb-6">Account Settings</h2>
                    
                    <div class="bg-white rounded-xl shadow-md p-6 mb-6">
                        <h3 class="text-lg font-bold text-gray-800 mb-4">Notification Preferences</h3>
                        <div class="space-y-4">
                            <div class="flex items-center justify-between">
                                <div>
                                    <p class="font-medium">Email Notifications</p>
                                    <p class="text-sm text-gray-500">Receive updates about your bookings and promotions</p>
                                </div>
                                <label class="relative inline-flex items-center cursor-pointer">
                                    <input type="checkbox" value="" class="sr-only peer" checked>
                                    <div class="w-11 h-6 bg-gray-200 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-indigo-300 rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-indigo-600"></div>
                                </label>
                            </div>
                            <div class="flex items-center justify-between">
                                <div>
                                    <p class="font-medium">SMS Notifications</p>
                                    <p class="text-sm text-gray-500">Receive important alerts via text message</p>
                                </div>
                                <label class="relative inline-flex items-center cursor-pointer">
                                    <input type="checkbox" value="" class="sr-only peer">
                                    <div class="w-11 h-6 bg-gray-200 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-indigo-300 rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-indigo-600"></div>
                                </label>
                            </div>
                            <div class="flex items-center justify-between">
                                <div>
                                    <p class="font-medium">Push Notifications</p>
                                    <p class="text-sm text-gray-500">Get instant updates on your mobile device</p>
                                </div>
                                <label class="relative inline-flex items-center cursor-pointer">
                                    <input type="checkbox" value="" class="sr-only peer" checked>
                                    <div class="w-11 h-6 bg-gray-200 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-indigo-300 rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-indigo-600"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                    
                    <div class="bg-white rounded-xl shadow-md p-6">
                        <h3 class="text-lg font-bold text-gray-800 mb-4">Security</h3>
                        <div class="space-y-4">
                            <div class="flex items-center justify-between">
                                <div>
                                    <p class="font-medium">Change Password</p>
                                    <p class="text-sm text-gray-500">Update your account password</p>
                                </div>
                                <button class="px-4 py-2 bg-indigo-600 text-white rounded-lg hover:bg-indigo-700 transition">Change</button>
                            </div>
                            <div class="flex items-center justify-between">
                                <div>
                                    <p class="font-medium">Two-Factor Authentication</p>
                                    <p class="text-sm text-gray-500">Add an extra layer of security to your account</p>
                                </div>
                                <label class="relative inline-flex items-center cursor-pointer">
                                    <input type="checkbox" value="" class="sr-only peer">
                                    <div class="w-11 h-6 bg-gray-200 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-indigo-300 rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-indigo-600"></div>
                                </label>
                            </div>
                            <div class="flex items-center justify-between">
                                <div>
                                    <p class="font-medium text-red-600">Delete Account</p>
                                    <p class="text-sm text-gray-500">Permanently remove your account and all data</p>
                                </div>
                                <button class="px-4 py-2 border border-red-500 text-red-500 rounded-lg hover:bg-red-50 transition">Delete</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-gray-800 text-white py-8">
        <div class="container mx-auto px-4">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
                <div>
                    <h3 class="text-lg font-bold mb-4">TravelEase</h3>
                    <p class="text-gray-400">Making travel planning effortless and enjoyable since 2015.</p>
                </div>
                <div>
                    <h3 class="text-lg font-bold mb-4">Quick Links</h3>
                    <ul class="space-y-2">
                        <li><a href="#" class="text-gray-400 hover:text-white transition">Home</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white transition">Destinations</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white transition">Special Offers</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white transition">Blog</a></li>
                    </ul>
                </div>
                <div>
                    <h3 class="text-lg font-bold mb-4">Support</h3>
                    <ul class="space-y-2">
                        <li><a href="#" class="text-gray-400 hover:text-white transition">FAQs</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white transition">Contact Us</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white transition">Privacy Policy</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white transition">Terms of Service</a></li>
                    </ul>
                </div>
                <div>
                    <h3 class="text-lg font-bold mb-4">Newsletter</h3>
                    <p class="text-gray-400 mb-4">Subscribe to get updates on special offers.</p>
                    <div class="flex">
                        <input type="email" placeholder="Your email" class="px-4 py-2 rounded-l-lg focus:outline-none text-gray-800 w-full">
                        <button class="bg-indigo-600 px-4 py-2 rounded-r-lg hover:bg-indigo-700 transition">
                            <i class="fas fa-paper-plane"></i>
                        </button>
                    </div>
                </div>
            </div>
            <div class="border-t border-gray-700 mt-8 pt-8 flex flex-col md:flex-row justify-between items-center">
                <p class="text-gray-400">© 2023 TravelEase. All rights reserved.</p>
                <div class="flex space-x-4 mt-4 md:mt-0">
                    <a href="#" class="text-gray-400 hover:text-white transition">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#" class="text-gray-400 hover:text-white transition">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="#" class="text-gray-400 hover:text-white transition">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="#" class="text-gray-400 hover:text-white transition">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                </div>
            </div>
        </div>
    </footer>

    <script>
        // Tab switching functionality
        function switchTab(tabId) {
            // Hide all tab contents
            document.querySelectorAll('.tab-content').forEach(tab => {
                tab.classList.remove('active');
            });
            
            // Show selected tab content
            document.getElementById(tabId).classList.add('active');
            
            // Update active tab button
            document.querySelectorAll('.tab-button').forEach(button => {
                button.classList.remove('border-indigo-500', 'text-indigo-600');
                button.classList.add('border-transparent', 'text-gray-500');
            });
            
            // Find the clicked button (this is a bit hacky since we don't have event in the parameters)
            // In a real app, you might want to pass the event object to this function
            const buttons = document.querySelectorAll('.tab-button');
            buttons.forEach(button => {
                if (button.textContent.includes(tabId.charAt(0).toUpperCase() + tabId.slice(1))) {
                    button.classList.add('border-indigo-500', 'text-indigo-600');
                    button.classList.remove('border-transparent', 'text-gray-500');
                }
            });
        }
        
        // Edit profile form toggle
        function toggleEditForm() {
            const form = document.getElementById('edit-form');
            form.classList.toggle('active');
        }
        
        // Save profile function
        function saveProfile() {
            // In a real app, you would save the data to a server here
            alert('Profile changes saved successfully!');
            toggleEditForm();
        }
        
        // Show contact form
        function showContactForm() {
            document.getElementById('contact-form').classList.remove('hidden');
            // Scroll to contact form
            document.getElementById('contact-form').scrollIntoView({ behavior: 'smooth' });
        }
        
        // Hide contact form
        function hideContactForm() {
            document.getElementById('contact-form').classList.add('hidden');
        }
        
        // Submit contact form
        function submitContactForm() {
            // In a real app, you would submit the form to a server here
            alert('Your message has been sent! We will get back to you soon.');
            hideContactForm();
        }
        
        // Logout function
        function logout() {
            // In a real app, you would handle the logout process here
            if (confirm('Are you sure you want to logout?')) {
                alert('You have been logged out successfully.');
                // Redirect to login page
                window.location.href = 'Login.jsp';
            }
        }
        
        // Handle photo upload
        document.getElementById('upload-photo').addEventListener('change', function(e) {
            if (e.target.files && e.target.files[0]) {
                const reader = new FileReader();
                
                reader.onload = function(event) {
                    document.querySelector('.profile-pic-container img').src = event.target.result;
                }
                
                reader.readAsDataURL(e.target.files[0]);
            }
        });
    </script>
</body>
</html>