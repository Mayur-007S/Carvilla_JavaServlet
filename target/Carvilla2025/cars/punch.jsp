<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tata Punch | CARVILLA</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        .car-image-container {
            perspective: 1000px;
        }
        .car-image {
            transition: transform 0.5s ease;
        }
        .car-image:hover {
            transform: rotateY(10deg) scale(1.03);
        }
        .color-option {
            transition: all 0.3s ease;
        }
        .color-option:hover {
            transform: scale(1.1);
        }
        .color-option.selected {
            box-shadow: 0 0 0 3px white, 0 0 0 5px #3b82f6;
        }
        .feature-icon {
            transition: transform 0.3s ease;
        }
        .feature-card:hover .feature-icon {
            transform: scale(1.2);
        }
        .variant-option {
            transition: all 0.3s ease;
        }
        .variant-option:hover {
            transform: translateY(-3px);
        }
        .variant-option.selected {
            border-color: #3b82f6;
            box-shadow: 0 0 0 1px #3b82f6;
        }
        .specs-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 1rem;
        }
        @media (max-width: 768px) {
            .specs-grid {
                grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
            }
        }
    </style>
</head>
<body class="bg-gray-50 font-sans">
    <!-- Navigation -->
    <nav class="bg-white shadow-lg">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between h-16">
                <div class="flex items-center">
                    <div class="flex-shrink-0 flex items-center">
                        <i class="fas fa-car text-blue-600 text-2xl mr-2"></i>
                        <span class="text-xl font-bold text-gray-900">CARVILLA</span>
                    </div>
                </div>
                <div class="hidden md:ml-6 md:flex md:items-center md:space-x-8">
                    <a href="#" class="text-gray-900 inline-flex items-center px-1 pt-1 border-b-2 border-blue-500 text-sm font-medium">Home</a>
                    <a href="#" class="text-gray-500 hover:text-gray-900 inline-flex items-center px-1 pt-1 border-b-2 border-transparent hover:border-gray-300 text-sm font-medium">SUVs</a>
                    <a href="#" class="text-gray-500 hover:text-gray-900 inline-flex items-center px-1 pt-1 border-b-2 border-transparent hover:border-gray-300 text-sm font-medium">Hatchbacks</a>
                    <a href="#" class="text-gray-500 hover:text-gray-900 inline-flex items-center px-1 pt-1 border-b-2 border-transparent hover:border-gray-300 text-sm font-medium">About</a>
                    <a href="#" class="text-gray-500 hover:text-gray-900 inline-flex items-center px-1 pt-1 border-b-2 border-transparent hover:border-gray-300 text-sm font-medium">Contact</a>
                </div>
                <div class="flex items-center">
                    <button class="bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded-md text-sm font-medium">
                        Book Test Drive
                    </button>
                </div>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <!-- Breadcrumbs -->
        <div class="flex items-center text-sm text-gray-500 mb-6">
            <a href="#" class="hover:text-blue-600">Home</a>
            <span class="mx-2">/</span>
            <a href="#" class="hover:text-blue-600">SUVs</a>
            <span class="mx-2">/</span>
            <a href="#" class="hover:text-blue-600">Tata</a>
            <span class="mx-2">/</span>
            <span class="text-gray-700">Punch</span>
        </div>

        <div class="flex flex-col lg:flex-row gap-8">
            <!-- Left Column - Car Images & Color Selection -->
            <div class="lg:w-2/3">
                <div class="bg-white rounded-xl shadow-md overflow-hidden mb-6 car-image-container">
                    <div class="p-4 bg-gray-100 flex justify-center">
                        <img id="main-car-image" src="https://imgd.aeplcdn.com/1056x594/n/cw/ec/130591/punch-exterior-right-front-three-quarter-2.jpeg?isig=0&q=80" class="car-image h-80 object-contain" style="mix-blend-mode: multiply;height: 26rem;transform: scale(1.5);">
                    </div>
                </div>

                <!-- Color Selection -->
                <div class="bg-white rounded-xl shadow-md overflow-hidden p-6 mb-6">
                    <h3 class="text-lg font-semibold text-gray-900 mb-4">Available Colors</h3>
                    <div class="flex flex-wrap gap-4">
                        <div class="color-option selected" data-color="red" data-image="https://imgd.aeplcdn.com/1056x594/n/cw/ec/130591/punch-exterior-right-front-three-quarter-2.jpeg?isig=0&q=80">
                            <div style="background-color:#E42256;" class="w-12 h-12 rounded-full cursor-pointer border-2 border-white shadow-md"></div>
                            <span class="text-xs text-center block mt-1">Red Rage</span>
                        </div>
                        <div class="color-option" data-color="black" data-image="https://imgd.aeplcdn.com/1056x594/n/cw/ec/130591/punch-exterior-right-front-three-quarter-3.jpeg?isig=0&q=80">
                            <div style="background-color:#000000;" class="w-12 h-12 rounded-full cursor-pointer border-2 border-white shadow-md"></div>
                            <span class="text-xs text-center block mt-1">Daytona Grey</span>
                        </div>
                        <div class="color-option" data-color="silver" data-image="https://imgd.aeplcdn.com/1056x594/n/cw/ec/130591/punch-exterior-right-front-three-quarter-4.jpeg?isig=0&q=80">
                            <div class="w-12 h-12 rounded-full bg-gray-300 cursor-pointer border-2 border-white shadow-md"></div>
                            <span class="text-xs text-center block mt-1">Atomic Orange</span>
                        </div>
                        <div class="color-option" data-color="blue" data-image="https://imgd.aeplcdn.com/1056x594/n/cw/ec/130591/punch-exterior-right-front-three-quarter-5.jpeg?isig=0&q=80">
                            <div style="background-color:#1F4E79;" class="w-12 h-12 rounded-full cursor-pointer border-2 border-white shadow-md"></div>
                            <span class="text-xs text-center block mt-1">Tropical Mist</span>
                        </div>
                        <div class="color-option" data-color="white" data-image="https://imgd.aeplcdn.com/1056x594/n/cw/ec/130591/punch-exterior-right-front-three-quarter-6.jpeg?isig=0&q=80">
                            <div class="w-12 h-12 rounded-full bg-gray-100 cursor-pointer border-2 border-white shadow-md"></div>
                            <span class="text-xs text-center block mt-1">Orcus White</span>
                        </div>
                        <div class="color-option" data-color="brown" data-image="https://imgd.aeplcdn.com/1056x594/n/cw/ec/130591/punch-exterior-right-front-three-quarter-7.jpeg?isig=0&q=80">
                            <div style="background-color:#7B3F00;" class="w-12 h-12 rounded-full cursor-pointer border-2 border-white shadow-md"></div>
                            <span class="text-xs text-center block mt-1">Café Brown</span>
                        </div>
                    </div>
                </div>

                <!-- Variant Selection -->
                <div class="bg-white rounded-xl shadow-md overflow-hidden p-6 mb-6">
                    <h3 class="text-lg font-semibold text-gray-900 mb-4">Select Variant</h3>
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
                        <div class="variant-option selected border-2 border-gray-200 rounded-lg p-4 cursor-pointer" data-variant="petrol-automatic" data-price="899000" data-specs='{"engine":"1.2L Revotron Petrol","power":"86bhp","torque":"113Nm","transmission":"5-Speed AMT","mileage":"18.8kmpl","features":"7-inch Touchscreen, Android Auto, Apple CarPlay, Rear Camera"}'>
                            <h4 class="font-semibold text-gray-900">Creative AMT</h4>
                            <div class="text-blue-600 font-bold text-lg mt-2">₹8.99 Lakh</div>
                            <div class="text-gray-500 text-sm mt-1">1.2L Petrol | AMT</div>
                        </div>
                        <div class="variant-option border-2 border-gray-200 rounded-lg p-4 cursor-pointer" data-variant="petrol-manual" data-price="799000" data-specs='{"engine":"1.2L Revotron Petrol","power":"86bhp","torque":"113Nm","transmission":"5-Speed Manual","mileage":"20.09kmpl","features":"7-inch Touchscreen, Android Auto, Apple CarPlay"}'>
                            <h4 class="font-semibold text-gray-900">Adventure</h4>
                            <div class="text-blue-600 font-bold text-lg mt-2">₹7.99 Lakh</div>
                            <div class="text-gray-500 text-sm mt-1">1.2L Petrol | Manual</div>
                        </div>
                        <div class="variant-option border-2 border-gray-200 rounded-lg p-4 cursor-pointer" data-variant="petrol-manual-base" data-price="599000" data-specs='{"engine":"1.2L Revotron Petrol","power":"86bhp","torque":"113Nm","transmission":"5-Speed Manual","mileage":"20.09kmpl","features":"Manual AC, Power Steering, Dual Airbags"}'>
                            <h4 class="font-semibold text-gray-900">Pure</h4>
                            <div class="text-blue-600 font-bold text-lg mt-2">₹5.99 Lakh</div>
                            <div class="text-gray-500 text-sm mt-1">1.2L Petrol | Manual</div>
                        </div>
                    </div>
                </div>

                <!-- Car Details Tabs -->
                <div class="bg-white rounded-xl shadow-md overflow-hidden">
                    <div class="border-b border-gray-200">
                        <nav class="flex -mb-px">
                            <button id="specs-tab" class="tab-button active py-4 px-6 text-center border-b-2 font-medium text-sm border-blue-500 text-blue-600">
                                Specifications
                            </button>
                            <button id="features-tab" class="tab-button py-4 px-6 text-center border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300">
                                Features
                            </button>
                            <button id="reviews-tab" class="tab-button py-4 px-6 text-center border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300">
                                Reviews
                            </button>
                            <button id="dimensions-tab" class="tab-button py-4 px-6 text-center border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300">
                                Dimensions
                            </button>
                        </nav>
                    </div>
                    <div class="p-6">
                        <!-- Specifications Content -->
                        <div id="specs-content" class="tab-content active">
                            <div class="specs-grid">
                                <div class="bg-gray-50 p-4 rounded-lg">
                                    <div class="text-gray-500 text-sm">Engine</div>
                                    <div class="font-semibold" id="spec-engine">1.2L Revotron Petrol</div>
                                </div>
                                <div class="bg-gray-50 p-4 rounded-lg">
                                    <div class="text-gray-500 text-sm">Power</div>
                                    <div class="font-semibold" id="spec-power">86bhp @ 6000rpm</div>
                                </div>
                                <div class="bg-gray-50 p-4 rounded-lg">
                                    <div class="text-gray-500 text-sm">Torque</div>
                                    <div class="font-semibold" id="spec-torque">113Nm @ 3300rpm</div>
                                </div>
                                <div class="bg-gray-50 p-4 rounded-lg">
                                    <div class="text-gray-500 text-sm">Transmission</div>
                                    <div class="font-semibold" id="spec-transmission">5-Speed AMT</div>
                                </div>
                                <div class="bg-gray-50 p-4 rounded-lg">
                                    <div class="text-gray-500 text-sm">Mileage</div>
                                    <div class="font-semibold" id="spec-mileage">18.8 kmpl</div>
                                </div>
                                <div class="bg-gray-50 p-4 rounded-lg">
                                    <div class="text-gray-500 text-sm">Drivetrain</div>
                                    <div class="font-semibold">FWD</div>
                                </div>
                                <div class="bg-gray-50 p-4 rounded-lg">
                                    <div class="text-gray-500 text-sm">Fuel Tank</div>
                                    <div class="font-semibold">37 liters</div>
                                </div>
                                <div class="bg-gray-50 p-4 rounded-lg">
                                    <div class="text-gray-500 text-sm">Seating</div>
                                    <div class="font-semibold">5 (2+3)</div>
                                </div>
                                <div class="bg-gray-50 p-4 rounded-lg">
                                    <div class="text-gray-500 text-sm">Boot Space</div>
                                    <div class="font-semibold">366 liters</div>
                                </div>
                                <div class="bg-gray-50 p-4 rounded-lg">
                                    <div class="text-gray-500 text-sm">Ground Clearance</div>
                                    <div class="font-semibold">187mm</div>
                                </div>
                                <div class="bg-gray-50 p-4 rounded-lg">
                                    <div class="text-gray-500 text-sm">Kerb Weight</div>
                                    <div class="font-semibold">1005kg</div>
                                </div>
                                <div class="bg-gray-50 p-4 rounded-lg">
                                    <div class="text-gray-500 text-sm">Turning Radius</div>
                                    <div class="font-semibold">5.1 meters</div>
                                </div>
                            </div>
                        </div>

                        <!-- Features Content -->
                        <div id="features-content" class="tab-content hidden">
                            <div class="space-y-6">
                                <div class="feature-card p-4 border border-gray-200 rounded-lg hover:bg-blue-50 transition-colors">
                                    <div class="flex items-start">
                                        <div class="feature-icon bg-blue-100 p-3 rounded-full text-blue-600 mr-4">
                                            <i class="fas fa-tachometer-alt text-xl"></i>
                                        </div>
                                        <div>
                                            <h4 class="font-semibold text-lg mb-1">Performance</h4>
                                            <p class="text-gray-600">1.2L Revotron petrol engine with 86bhp power and 113Nm torque. Multi-drive modes (City and Eco) for optimized performance and fuel efficiency.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="feature-card p-4 border border-gray-200 rounded-lg hover:bg-blue-50 transition-colors">
                                    <div class="flex items-start">
                                        <div class="feature-icon bg-blue-100 p-3 rounded-full text-blue-600 mr-4">
                                            <i class="fas fa-shield-alt text-xl"></i>
                                        </div>
                                        <div>
                                            <h4 class="font-semibold text-lg mb-1">Safety</h4>
                                            <p class="text-gray-600">Dual airbags, ABS with EBD, corner stability control, rear parking sensors, speed alert system, seat belt reminder, and high-speed alert system.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="feature-card p-4 border border-gray-200 rounded-lg hover:bg-blue-50 transition-colors">
                                    <div class="flex items-start">
                                        <div class="feature-icon bg-blue-100 p-3 rounded-full text-blue-600 mr-4">
                                            <i class="fas fa-wifi text-xl"></i>
                                        </div>
                                        <div>
                                            <h4 class="font-semibold text-lg mb-1">Technology</h4>
                                            <p class="text-gray-600">7-inch touchscreen infotainment with Android Auto and Apple CarPlay, iRA connected car technology, 4 speakers, steering mounted controls, and voice commands.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="feature-card p-4 border border-gray-200 rounded-lg hover:bg-blue-50 transition-colors">
                                    <div class="flex items-start">
                                        <div class="feature-icon bg-blue-100 p-3 rounded-full text-blue-600 mr-4">
                                            <i class="fas fa-couch text-xl"></i>
                                        </div>
                                        <div>
                                            <h4 class="font-semibold text-lg mb-1">Comfort</h4>
                                            <p class="text-gray-600">Automatic climate control, height adjustable driver seat, rear AC vents, cooled glove box, 60:40 split rear seat, and adjustable headrests.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="feature-card p-4 border border-gray-200 rounded-lg hover:bg-blue-50 transition-colors">
                                    <div class="flex items-start">
                                        <div class="feature-icon bg-blue-100 p-3 rounded-full text-blue-600 mr-4">
                                            <i class="fas fa-lightbulb text-xl"></i>
                                        </div>
                                        <div>
                                            <h4 class="font-semibold text-lg mb-1">Exterior</h4>
                                            <p class="text-gray-600">LED DRLs, projector headlamps, LED tail lamps, 16-inch diamond-cut alloy wheels, roof rails, skid plates, and signature humanity line grille.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Reviews Content -->
                        <div id="reviews-content" class="tab-content hidden">
                            <div class="space-y-6">
                                <div class="border-b border-gray-200 pb-6">
                                    <div class="flex items-center mb-2">
                                        <div class="flex items-center">
                                            <div class="flex items-center text-yellow-400">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="ml-2 font-semibold">Rahul Sharma</span>
                                        </div>
                                        <span class="text-gray-500 text-sm ml-auto">1 week ago</span>
                                    </div>
                                    <p class="text-gray-600">"The Tata Punch is a perfect city SUV! The compact dimensions make it easy to maneuver in traffic, while the high ground clearance helps with bad roads. The AMT gearbox is smooth and the fuel efficiency is excellent for city driving."</p>
                                </div>
                                <div class="border-b border-gray-200 pb-6">
                                    <div class="flex items-center mb-2">
                                        <div class="flex items-center">
                                            <div class="flex items-center text-yellow-400">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star-half-alt"></i>
                                            </div>
                                            <span class="ml-2 font-semibold">Priya Patel</span>
                                        </div>
                                        <span class="text-gray-500 text-sm ml-auto">2 weeks ago</span>
                                    </div>
                                    <p class="text-gray-600">"Excellent value for money. The Punch feels premium inside with good quality materials. The touchscreen is responsive and the Android Auto integration works perfectly. The boot space is surprisingly large for a car of this size."</p>
                                </div>
                                <div>
                                    <div class="flex items-center mb-2">
                                        <div class="flex items-center">
                                            <div class="flex items-center text-yellow-400">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="ml-2 font-semibold">Vikram Singh</span>
                                        </div>
                                        <span class="text-gray-500 text-sm ml-auto">3 weeks ago</span>
                                    </div>
                                    <p class="text-gray-600">"After test driving several compact SUVs, the Punch stood out for its build quality and ride comfort. The suspension handles bad roads very well, and the cabin is quiet at highway speeds. The AMT version is perfect for city driving."</p>
                                </div>
                            </div>
                        </div>

                        <!-- Dimensions Content -->
                        <div id="dimensions-content" class="tab-content hidden">
                            <div class="space-y-6">
                                <div class="bg-gray-50 p-6 rounded-lg">
                                    <h4 class="font-semibold text-lg mb-4">Exterior Dimensions</h4>
                                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                                        <div>
                                            <div class="flex justify-between py-2 border-b border-gray-200">
                                                <span class="text-gray-600">Length</span>
                                                <span class="font-medium">3827 mm</span>
                                            </div>
                                            <div class="flex justify-between py-2 border-b border-gray-200">
                                                <span class="text-gray-600">Width</span>
                                                <span class="font-medium">1742 mm</span>
                                            </div>
                                            <div class="flex justify-between py-2 border-b border-gray-200">
                                                <span class="text-gray-600">Height</span>
                                                <span class="font-medium">1615 mm</span>
                                            </div>
                                            <div class="flex justify-between py-2 border-b border-gray-200">
                                                <span class="text-gray-600">Wheelbase</span>
                                                <span class="font-medium">2445 mm</span>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="flex justify-between py-2 border-b border-gray-200">
                                                <span class="text-gray-600">Ground Clearance</span>
                                                <span class="font-medium">187 mm</span>
                                            </div>
                                            <div class="flex justify-between py-2 border-b border-gray-200">
                                                <span class="text-gray-600">Boot Space</span>
                                                <span class="font-medium">366 liters</span>
                                            </div>
                                            <div class="flex justify-between py-2 border-b border-gray-200">
                                                <span class="text-gray-600">Fuel Tank Capacity</span>
                                                <span class="font-medium">37 liters</span>
                                            </div>
                                            <div class="flex justify-between py-2 border-b border-gray-200">
                                                <span class="text-gray-600">Kerb Weight</span>
                                                <span class="font-medium">1005 kg</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="bg-gray-50 p-6 rounded-lg">
                                    <h4 class="font-semibold text-lg mb-4">Interior Dimensions</h4>
                                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                                        <div>
                                            <div class="flex justify-between py-2 border-b border-gray-200">
                                                <span class="text-gray-600">Headroom (Front)</span>
                                                <span class="font-medium">980 mm</span>
                                            </div>
                                            <div class="flex justify-between py-2 border-b border-gray-200">
                                                <span class="text-gray-600">Headroom (Rear)</span>
                                                <span class="font-medium">960 mm</span>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="flex justify-between py-2 border-b border-gray-200">
                                                <span class="text-gray-600">Legroom (Front)</span>
                                                <span class="font-medium">1050 mm</span>
                                            </div>
                                            <div class="flex justify-between py-2 border-b border-gray-200">
                                                <span class="text-gray-600">Legroom (Rear)</span>
                                                <span class="font-medium">840 mm</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right Column - Summary -->
            <div class="lg:w-1/3">
                <div class="bg-white rounded-xl shadow-md overflow-hidden sticky top-4">
                    <div class="p-6">
                        <h2 class="text-2xl font-bold text-gray-900 mb-2">Tata Punch</h2>
                        <div class="flex items-center mb-4">
                            <div class="flex items-center text-yellow-400 mr-2">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                            </div>
                            <span class="text-gray-600 text-sm">4.5 (287 reviews)</span>
                        </div>

                        <div class="flex items-center justify-between mb-6">
                            <div>
                                <span class="text-gray-500 text-sm">Starting at</span>
                                <div class="text-3xl font-bold text-gray-900" id="variant-price">₹8.99 Lakh</div>
                                <span class="text-gray-500 text-sm">Ex-showroom Delhi</span>
                            </div>
                            <div class="bg-green-100 text-green-800 px-3 py-1 rounded-full text-sm font-medium">
                                Available Now
                            </div>
                        </div>

                        <div class="border-t border-b border-gray-200 py-4 mb-6">
                            <h4 class="font-semibold mb-3">Key Specifications</h4>
                            <div class="space-y-3">
                                <div class="flex justify-between">
                                    <span class="text-gray-600">Engine</span>
                                    <span class="font-medium" id="variant-engine">1.2L Petrol</span>
                                </div>
                                <div class="flex justify-between">
                                    <span class="text-gray-600">Transmission</span>
                                    <span class="font-medium" id="variant-transmission">5-Speed AMT</span>
                                </div>
                                <div class="flex justify-between">
                                    <span class="text-gray-600">Mileage</span>
                                    <span class="font-medium" id="variant-mileage">18.8 kmpl</span>
                                </div>
                                <div class="flex justify-between">
                                    <span class="text-gray-600">Power</span>
                                    <span class="font-medium" id="variant-power">86bhp</span>
                                </div>
                            </div>
                        </div>

                        <div class="mb-6">
                            <h4 class="font-semibold mb-3">Top Features</h4>
                            <div class="space-y-2">
                                <div class="flex items-center">
                                    <i class="fas fa-check-circle text-green-500 mr-2"></i>
                                    <span class="text-gray-700" id="variant-features">7-inch Touchscreen, Android Auto, Apple CarPlay, Rear Camera</span>
                                </div>
                            </div>
                        </div>

                        <div class="space-y-4">
                            <button class="w-full bg-blue-600 hover:bg-blue-700 text-white py-3 px-4 rounded-md font-medium flex items-center justify-center">
                                <i class="fas fa-phone-alt mr-2"></i> Contact Dealer
                            </button>
                            <button class="w-full bg-white border border-blue-600 text-blue-600 hover:bg-blue-50 py-3 px-4 rounded-md font-medium flex items-center justify-center">
                                <i class="fas fa-calendar-check mr-2"></i> Book Test Drive
                            </button>
                            <button class="w-full bg-white border border-gray-300 text-gray-700 hover:bg-gray-50 py-3 px-4 rounded-md font-medium flex items-center justify-center">
                                <i class="fas fa-file-invoice-dollar mr-2"></i> Get On-Road Price
                            </button>
                        </div>

                        <div class="mt-6 text-center">
                            <p class="text-gray-600 text-sm">Need help? Call us at <a href="tel:+18005551234" class="text-blue-600">1-800-555-1234</a></p>
                        </div>
                    </div>
                </div>

                <!-- Finance Options -->
                <div class="bg-white rounded-xl shadow-md overflow-hidden mt-6">
                    <div class="p-6">
                        <h3 class="text-lg font-semibold text-gray-900 mb-4">Finance Options</h3>
                        <div class="space-y-4">
                            <div class="border border-gray-200 rounded-lg p-4">
                                <div class="flex justify-between items-center mb-2">
                                    <span class="font-medium">Down Payment</span>
                                    <span class="text-blue-600 font-bold">₹1.79 Lakh</span>
                                </div>
                                <div class="flex justify-between items-center text-sm text-gray-600">
                                    <span>EMI starts at</span>
                                    <span>₹14,999/month</span>
                                </div>
                            </div>
                            <div class="border border-gray-200 rounded-lg p-4">
                                <div class="flex justify-between items-center mb-2">
                                    <span class="font-medium">Corporate Lease</span>
                                    <span class="text-blue-600 font-bold">₹24,999/month</span>
                                </div>
                                <div class="flex justify-between items-center text-sm text-gray-600">
                                    <span>Inclusive of maintenance</span>
                                    <span>3-5 year term</span>
                                </div>
                            </div>
                            <button class="w-full bg-white border border-blue-600 text-blue-600 hover:bg-blue-50 py-2 px-4 rounded-md font-medium text-sm flex items-center justify-center">
                                <i class="fas fa-calculator mr-2"></i> Calculate EMI
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Similar Vehicles -->
    <div class="bg-gray-100 py-12">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <h2 class="text-2xl font-bold text-gray-900 mb-8">Similar Compact SUVs</h2>
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                <div class="bg-white rounded-xl shadow-md overflow-hidden hover:shadow-lg transition-shadow">
                    <div class="p-4 bg-gray-100 flex justify-center">
                        <img src="https://www.freepnglogos.com/uploads/hyundai-logo-png/hyundai-logo-png-transparent-hyundai-symbol-3.png" alt="Hyundai Venue" class="h-48 object-contain">
                    </div>
                    <div class="p-6">
                        <h3 class="text-xl font-semibold text-gray-900 mb-1">Hyundai Venue</h3>
                        <div class="flex items-center mb-2">
                            <div class="flex items-center text-yellow-400 mr-2">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                            </div>
                            <span class="text-gray-600 text-sm">4.3 (156 reviews)</span>
                        </div>
                        <div class="flex justify-between items-center">
                            <div>
                                <span class="text-gray-500 text-sm">From</span>
                                <div class="text-xl font-bold text-gray-900">₹7.53 Lakh</div>
                            </div>
                            <button class="text-blue-600 hover:text-blue-800 font-medium">
                                View Details <i class="fas fa-chevron-right ml-1"></i>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="bg-white rounded-xl shadow-md overflow-hidden hover:shadow-lg transition-shadow">
                    <div class="p-4 bg-gray-100 flex justify-center">
                        <img src="https://www.freepnglogos.com/uploads/kia-logo-png/kia-logo-png-kia-symbol-meaning-history-3.png" alt="Kia Sonet" class="h-48 object-contain">
                    </div>
                    <div class="p-6">
                        <h3 class="text-xl font-semibold text-gray-900 mb-1">Kia Sonet</h3>
                        <div class="flex items-center mb-2">
                            <div class="flex items-center text-yellow-400 mr-2">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <span class="text-gray-600 text-sm">4.7 (98 reviews)</span>
                        </div>
                        <div class="flex justify-between items-center">
                            <div>
                                <span class="text-gray-500 text-sm">From</span>
                                <div class="text-xl font-bold text-gray-900">₹7.79 Lakh</div>
                            </div>
                            <button class="text-blue-600 hover:text-blue-800 font-medium">
                                View Details <i class="fas fa-chevron-right ml-1"></i>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="bg-white rounded-xl shadow-md overflow-hidden hover:shadow-lg transition-shadow">
                    <div class="p-4 bg-gray-100 flex justify-center">
                        <img src="https://www.freepnglogos.com/uploads/maruti-suzuki-logo-png/maruti-suzuki-logo-png-maruti-suzuki-symbol-3.png" alt="Maruti Brezza" class="h-48 object-contain">
                    </div>
                    <div class="p-6">
                        <h3 class="text-xl font-semibold text-gray-900 mb-1">Maruti Brezza</h3>
                        <div class="flex items-center mb-2">
                            <div class="flex items-center text-yellow-400 mr-2">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <span class="text-gray-600 text-sm">4.8 (210 reviews)</span>
                        </div>
                        <div class="flex justify-between items-center">
                            <div>
                                <span class="text-gray-500 text-sm">From</span>
                                <div class="text-xl font-bold text-gray-900">₹8.29 Lakh</div>
                            </div>
                            <button class="text-blue-600 hover:text-blue-800 font-medium">
                                View Details <i class="fas fa-chevron-right ml-1"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-gray-900 text-white">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
                <div>
                    <h3 class="text-lg font-semibold mb-4">CARVILLA</h3>
                    <p class="text-gray-400">Your trusted partner for new car purchases in India. We offer the best prices, expert reviews, and seamless buying experience.</p>
                </div>
                <div>
                    <h3 class="text-lg font-semibold mb-4">Popular Brands</h3>
                    <ul class="space-y-2">
                        <li><a href="#" class="text-gray-400 hover:text-white">Tata</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white">Hyundai</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white">Kia</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white">Maruti Suzuki</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white">Mahindra</a></li>
                    </ul>
                </div>
                <div>
                    <h3 class="text-lg font-semibold mb-4">Support</h3>
                    <ul class="space-y-2">
                        <li><a href="#" class="text-gray-400 hover:text-white">FAQs</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white">Contact Us</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white">Privacy Policy</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white">Terms of Service</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white">Careers</a></li>
                    </ul>
                </div>
                <div>
                    <h3 class="text-lg font-semibold mb-4">Contact Us</h3>
                    <address class="text-gray-400 not-italic">
                        <p class="mb-2">456 Auto Plaza</p>
                        <p class="mb-2">Gurugram, Haryana 122002</p>
                        <p class="mb-2">Phone: <a href="tel:+9118005551234" class="hover:text-white">1800-555-1234</a></p>
                        <p>Email: <a href="mailto:info@cavilla.com" class="hover:text-white">info@cavilla.com</a></p>
                    </address>
                    <div class="flex space-x-4 mt-4">
                        <a href="#" class="text-gray-400 hover:text-white"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="text-gray-400 hover:text-white"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="text-gray-400 hover:text-white"><i class="fab fa-instagram"></i></a>
                        <a href="#" class="text-gray-400 hover:text-white"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
            </div>
            <div class="border-t border-gray-800 mt-12 pt-8 text-center text-gray-400">
                <p>&copy; 2023 CARVILLA. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script>
        // Color selection functionality
        document.querySelectorAll('.color-option').forEach(option => {
            option.addEventListener('click', function() {
                // Remove selected class from all options
                document.querySelectorAll('.color-option').forEach(opt => {
                    opt.classList.remove('selected');
                });
                
                // Add selected class to clicked option
                this.classList.add('selected');
                
                // Change main car image
                const newImage = this.getAttribute('data-image');
                document.getElementById('main-car-image').src = newImage;
            });
        });

        // Variant selection functionality
        document.querySelectorAll('.variant-option').forEach(option => {
            option.addEventListener('click', function() {
                // Remove selected class from all options
                document.querySelectorAll('.variant-option').forEach(opt => {
                    opt.classList.remove('selected');
                    opt.classList.add('border-gray-200');
                });
                
                // Add selected class to clicked option
                this.classList.add('selected');
                this.classList.remove('border-gray-200');
                
                // Update price and specifications
                const price = this.getAttribute('data-price');
                const specs = JSON.parse(this.getAttribute('data-specs'));
                
                document.getElementById('variant-price').textContent = `₹${(price/100000).toFixed(2)} Lakh`;
                document.getElementById('variant-engine').textContent = specs.engine;
                document.getElementById('variant-transmission').textContent = specs.transmission;
                document.getElementById('variant-mileage').textContent = specs.mileage;
                document.getElementById('variant-power').textContent = specs.power;
                document.getElementById('variant-features').textContent = specs.features;
                
                // Update specifications tab
                document.getElementById('spec-engine').textContent = specs.engine;
                document.getElementById('spec-power').textContent = `${specs.power} @ 6000rpm`;
                document.getElementById('spec-torque').textContent = `${specs.torque} @ 3300rpm`;
                document.getElementById('spec-transmission').textContent = specs.transmission;
                document.getElementById('spec-mileage').textContent = specs.mileage;
            });
        });

        // Tab switching functionality
        const tabs = {
            'specs-tab': 'specs-content',
            'features-tab': 'features-content',
            'reviews-tab': 'reviews-content',
            'dimensions-tab': 'dimensions-content'
        };

        Object.entries(tabs).forEach(([tabId, contentId]) => {
            document.getElementById(tabId).addEventListener('click', function() {
                // Remove active class from all tabs and contents
                document.querySelectorAll('.tab-button').forEach(tab => {
                    tab.classList.remove('active', 'text-blue-600', 'border-blue-500');
                    tab.classList.add('text-gray-500', 'border-transparent');
                });
                document.querySelectorAll('.tab-content').forEach(content => {
                    content.classList.add('hidden');
                    content.classList.remove('active');
                });
                
                // Add active class to clicked tab and corresponding content
                this.classList.add('active', 'text-blue-600', 'border-blue-500');
                this.classList.remove('text-gray-500', 'border-transparent');
                document.getElementById(contentId).classList.remove('hidden');
                document.getElementById(contentId).classList.add('active');
            });
        });
    </script>
</body>
</html>