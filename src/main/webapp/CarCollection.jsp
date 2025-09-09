<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DriveEasy - Car Collection</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        .car-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }
        .availability-dot {
            width: 10px;
            height: 10px;
            border-radius: 50%;
            display: inline-block;
            margin-right: 5px;
        }
        .available {
            background-color: #10B981;
        }
        .unavailable {
            background-color: #EF4444;
        }
    </style>
</head>
<body class="bg-gray-50">
    <!-- Navigation -->
    <nav class="bg-white shadow-sm">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between h-16">
                <div class="flex items-center">
                    <div class="flex-shrink-0 flex items-center">
                        <i class="fas fa-car text-blue-600 text-2xl mr-2"></i>
                        <span class="text-xl font-bold text-blue-600">DriveEasy</span>
                    </div>
                    <div class="hidden sm:ml-6 sm:flex sm:space-x-8">
                        <a href="#" class="border-blue-500 text-gray-900 inline-flex items-center px-1 pt-1 border-b-2 text-sm font-medium">Home</a>
                        <a href="#" class="border-transparent text-gray-500 hover:border-gray-300 hover:text-gray-700 inline-flex items-center px-1 pt-1 border-b-2 text-sm font-medium">Cars</a>
                        <a href="#" class="border-transparent text-gray-500 hover:border-gray-300 hover:text-gray-700 inline-flex items-center px-1 pt-1 border-b-2 text-sm font-medium">About</a>
                        <a href="#" class="border-transparent text-gray-500 hover:border-gray-300 hover:text-gray-700 inline-flex items-center px-1 pt-1 border-b-2 text-sm font-medium">Contact</a>
                    </div>
                </div>
                <div class="hidden sm:ml-6 sm:flex sm:items-center">
                    <button class="bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded-md text-sm font-medium">Sign In</button>
                </div>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <div class="bg-blue-600 text-white py-12">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center">
                <h1 class="text-4xl font-bold mb-4">Find Your Perfect Ride</h1>
                <p class="text-xl mb-8">Browse our extensive collection of premium vehicles</p>
            </div>
        </div>
    </div>

    <!-- Search and Filter Section -->
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <div class="bg-white p-6 rounded-lg shadow-md">
            <div class="flex flex-col md:flex-row md:items-center md:justify-between gap-4">
                <div class="relative flex-grow">
                    <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                        <i class="fas fa-search text-gray-400"></i>
                    </div>
                    <input type="text" id="searchInput" placeholder="Search by car name, model or brand..." class="pl-10 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm p-2 border">
                </div>
                <div class="flex flex-col sm:flex-row gap-4">
                    <select id="priceFilter" class="rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm p-2 border">
                        <option value="">All Prices</option>
                        <option value="0-50">Under $50/day</option>
                        <option value="50-100">$50 - $100/day</option>
                        <option value="100-150">$100 - $150/day</option>
                        <option value="150-200">$150 - $200/day</option>
                        <option value="200">Above $200/day</option>
                    </select>
                    <select id="availabilityFilter" class="rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm p-2 border">
                        <option value="">All Availability</option>
                        <option value="available">Available Now</option>
                        <option value="unavailable">Currently Booked</option>
                    </select>
                </div>
            </div>
        </div>
    </div>

    <!-- Car Collection -->
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <div id="carCount" class="text-gray-600 mb-4">Showing 12 cars</div>
        
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6" id="carContainer">
            <!-- Car cards will be dynamically inserted here -->
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-gray-800 text-white py-12">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
                <div>
                    <h3 class="text-lg font-semibold mb-4">DriveEasy</h3>
                    <p class="text-gray-400">Your trusted partner for premium car rentals at competitive prices.</p>
                </div>
                <div>
                    <h3 class="text-lg font-semibold mb-4">Quick Links</h3>
                    <ul class="space-y-2">
                        <li><a href="#" class="text-gray-400 hover:text-white">Home</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white">Cars</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white">About Us</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white">Contact</a></li>
                    </ul>
                </div>
                <div>
                    <h3 class="text-lg font-semibold mb-4">Contact Us</h3>
                    <ul class="space-y-2 text-gray-400">
                        <li><i class="fas fa-map-marker-alt mr-2"></i> 123 Drive St, Auto City</li>
                        <li><i class="fas fa-phone mr-2"></i> (123) 456-7890</li>
                        <li><i class="fas fa-envelope mr-2"></i> info@driveeasy.com</li>
                    </ul>
                </div>
                <div>
                    <h3 class="text-lg font-semibold mb-4">Newsletter</h3>
                    <p class="text-gray-400 mb-4">Subscribe to our newsletter for the latest deals.</p>
                    <div class="flex">
                        <input type="email" placeholder="Your email" class="px-4 py-2 rounded-l-md w-full text-gray-900">
                        <button class="bg-blue-600 hover:bg-blue-700 px-4 py-2 rounded-r-md"><i class="fas fa-paper-plane"></i></button>
                    </div>
                </div>
            </div>
            <div class="border-t border-gray-700 mt-8 pt-8 text-center text-gray-400">
                <p>&copy; 2023 DriveEasy. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script>
        // Sample car data
        const cars = [
            { id: 1, name: "Toyota Camry", price: 65, image: "https://cdn.jdpower.com/Models/640x480/2023-Toyota-Camry.jpg", availability: "available", type: "Sedan", seats: 5, transmission: "Automatic" },
            { id: 2, name: "Honda Accord", price: 70, image: "https://cdn.jdpower.com/Models/640x480/2023-Honda-Accord.jpg", availability: "available", type: "Sedan", seats: 5, transmission: "Automatic" },
            { id: 3, name: "Ford Mustang", price: 120, image: "https://cdn.jdpower.com/Models/640x480/2023-Ford-Mustang.jpg", availability: "unavailable", type: "Sports", seats: 4, transmission: "Manual" },
            { id: 4, name: "Chevrolet Tahoe", price: 110, image: "https://cdn.jdpower.com/Models/640x480/2023-Chevrolet-Tahoe.jpg", availability: "available", type: "SUV", seats: 8, transmission: "Automatic" },
            { id: 5, name: "Tesla Model 3", price: 150, image: "https://cdn.jdpower.com/Models/640x480/2023-Tesla-Model3.jpg", availability: "available", type: "Electric", seats: 5, transmission: "Automatic" },
            { id: 6, name: "BMW X5", price: 180, image: "https://cdn.jdpower.com/Models/640x480/2023-BMW-X5.jpg", availability: "unavailable", type: "Luxury SUV", seats: 5, transmission: "Automatic" },
            { id: 7, name: "Jeep Wrangler", price: 95, image: "https://cdn.jdpower.com/Models/640x480/2023-Jeep-Wrangler.jpg", availability: "available", type: "Off-road", seats: 4, transmission: "Automatic" },
            { id: 8, name: "Mercedes-Benz C-Class", price: 200, image: "https://cdn.jdpower.com/Models/640x480/2023-Mercedes-Benz-CClass.jpg", availability: "available", type: "Luxury", seats: 5, transmission: "Automatic" },
            { id: 9, name: "Nissan Rogue", price: 75, image: "https://cdn.jdpower.com/Models/640x480/2023-Nissan-Rogue.jpg", availability: "available", type: "SUV", seats: 5, transmission: "Automatic" },
            { id: 10, name: "Hyundai Tucson", price: 68, image: "https://cdn.jdpower.com/Models/640x480/2023-Hyundai-Tucson.jpg", availability: "unavailable", type: "SUV", seats: 5, transmission: "Automatic" },
            { id: 11, name: "Kia Telluride", price: 85, image: "https://cdn.jdpower.com/Models/640x480/2023-Kia-Telluride.jpg", availability: "available", type: "SUV", seats: 7, transmission: "Automatic" },
            { id: 12, name: "Subaru Outback", price: 72, image: "https://cdn.jdpower.com/Models/640x480/2023-Subaru-Outback.jpg", availability: "available", type: "Wagon", seats: 5, transmission: "Automatic" }
        ];

        // Function to render cars
        function renderCars(filteredCars = cars) {
            const carContainer = document.getElementById('carContainer');
            carContainer.innerHTML = '';
            
            filteredCars.forEach(car => {
                const carCard = document.createElement('div');
                carCard.className = 'bg-white rounded-lg overflow-hidden shadow-md car-card transition duration-300';
                carCard.innerHTML = `
                    <div class="relative h-48 overflow-hidden">
                        <img src="${car.image}" alt="${car.name}" class="w-full h-full object-cover">
                        <div class="absolute top-2 right-2 bg-white px-2 py-1 rounded-full text-xs font-semibold">$${car.price}/day</div>
                    </div>
                    <div class="p-4">
                        <h3 class="text-lg font-semibold mb-2">${car.name}</h3>
                        <div class="flex justify-between text-sm text-gray-600 mb-3">
                            <span><i class="fas fa-users mr-1"></i> ${car.seats} Seats</span>
                            <span><i class="fas fa-cog mr-1"></i> ${car.transmission}</span>
                            <span>${car.type}</span>
                        </div>
                        <div class="flex items-center justify-between">
                            <span class="text-sm">
                                <span class="availability-dot ${car.availability === 'available' ? 'available' : 'unavailable'}"></span>
                                ${car.availability === 'available' ? 'Available Now' : 'Currently Booked'}
                            </span>
                            <button class="bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded-md text-sm font-medium">Book Now</button>
                        </div>
                    </div>
                `;
                carContainer.appendChild(carCard);
            });
            
            document.getElementById('carCount').textContent = `Showing ${filteredCars.length} cars`;
        }

        // Initial render
        renderCars();

        // Filter functionality
        function filterCars() {
            const searchTerm = document.getElementById('searchInput').value.toLowerCase();
            const priceFilter = document.getElementById('priceFilter').value;
            const availabilityFilter = document.getElementById('availabilityFilter').value;
            
            let filtered = cars.filter(car => {
                // Search filter
                const matchesSearch = car.name.toLowerCase().includes(searchTerm);
                
                // Price filter
                let matchesPrice = true;
                if (priceFilter) {
                    if (priceFilter === "0-50") matchesPrice = car.price < 50;
                    else if (priceFilter === "50-100") matchesPrice = car.price >= 50 && car.price < 100;
                    else if (priceFilter === "100-150") matchesPrice = car.price >= 100 && car.price < 150;
                    else if (priceFilter === "150-200") matchesPrice = car.price >= 150 && car.price < 200;
                    else if (priceFilter === "200") matchesPrice = car.price >= 200;
                }
                
                // Availability filter
                let matchesAvailability = true;
                if (availabilityFilter) {
                    matchesAvailability = car.availability === availabilityFilter;
                }
                
                return matchesSearch && matchesPrice && matchesAvailability;
            });
            
            renderCars(filtered);
        }

        // Event listeners for filters
        document.getElementById('searchInput').addEventListener('input', filterCars);
        document.getElementById('priceFilter').addEventListener('change', filterCars);
        document.getElementById('availabilityFilter').addEventListener('change', filterCars);
    </script>
</body>
</html>