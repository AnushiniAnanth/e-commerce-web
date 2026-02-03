<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>FruitHub - Home</title>
    <!-- Tailwind CSS via CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">

<!-- Header -->
<header class="bg-white shadow-md p-4 sticky top-0 z-50">
    <div class="flex justify-between items-center">
        <!-- Center: Logo -->
        <h2 class="text-2xl font-bold text-green-600">FruitHub</h2>

        <!-- Navigation -->
        <nav class="space-x-6 text-gray-700">
            <a href="#hero" class="hover:text-green-600">Home</a>
            <a href="#products" onclick="filterCategory('all')" class="hover:text-green-600">Shop Now</a>
            <a href="contact.jsp" class="hover:text-green-600">Contact</a>
        </nav>

        <!-- Right corner: Login & Signup -->
        <div class="space-x-2">
            <a href="login.jsp" class="border border-green-600 text-green-600 px-4 py-2 rounded-md hover:bg-green-50">Login</a>
            <a href="signup.jsp" class="bg-green-600 text-white px-4 py-2 rounded-md hover:bg-green-700">Signup</a>
        </div>
    </div>
</header>

<!-- Hero -->
<div id="hero" class="bg-green-600 text-white py-16">
    <div class="max-w-7xl mx-auto flex flex-col md:flex-row items-center justify-between px-6">
        
        <!-- Left side: Welcome text -->
        <div class="md:w-1/2 text-center md:text-left mb-8 md:mb-0">
            <h1 class="text-4xl font-bold">Welcome to FruitHub</h1>
            <p class="mt-4 text-lg">Fresh fruits, vegetables, groceries, and nuts delivered to you.</p>
        </div>

        <!-- Right side: GIF in oval shape -->
        <div class="md:w-1/4 flex justify-center">
            <img src="https://www.beuc.eu/sites/default/files/food_gif_eat_local.gif" 
                 alt="Fruit GIF" 
                 class="rounded-full shadow-lg w-64 h-64 object-cover">
        </div>
    </div>
</div>



<!-- Products Section -->
<div id="products" class="max-w-7xl mx-auto py-10 px-4">
    <h2 class="text-3xl font-bold text-green-600 mb-6 text-center">Our Products</h2>

    <!-- Category Buttons -->
    <div class="flex justify-center space-x-4 mb-8">
        <button onclick="filterCategory('fruits')" class="bg-green-600 text-white px-4 py-2 rounded-md hover:bg-green-700">Fruits</button>
        <button onclick="filterCategory('vegetables')" class="bg-green-600 text-white px-4 py-2 rounded-md hover:bg-green-700">Vegetables</button>
        <button onclick="filterCategory('nuts')" class="bg-green-600 text-white px-4 py-2 rounded-md hover:bg-green-700">Nuts</button>
        <button onclick="filterCategory('grams')" class="bg-green-600 text-white px-4 py-2 rounded-md hover:bg-green-700">Grams</button>
        <button onclick="filterCategory('all')" class="border border-green-600 text-green-600 px-4 py-2 rounded-md hover:bg-green-50">All</button>
    </div>

    <!-- Product Grid -->
    <div id="productGrid" class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
        <!-- Example product cards -->
        <div class="product-card bg-white shadow-md rounded-lg overflow-hidden" data-category="fruits">
            <img src="images/apple.jpg" alt="Apple" class="w-full h-48 object-cover">
            <div class="p-4">
                <h5 class="text-lg font-semibold text-gray-800">Apple</h5>
                <p class="text-green-600 font-bold mt-2">$2.50</p>
                <button class="mt-2 w-full bg-green-600 text-white py-2 rounded-md hover:bg-green-700">Add to Cart</button>
            </div>
        </div>
        <div class="product-card bg-white shadow-md rounded-lg overflow-hidden" data-category="vegetables">
            <img src="images/carrot.jpg" alt="Carrot" class="w-full h-48 object-cover">
            <div class="p-4">
                <h5 class="text-lg font-semibold text-gray-800">Carrot</h5>
                <p class="text-green-600 font-bold mt-2">$1.20</p>
                <button class="mt-2 w-full bg-green-600 text-white py-2 rounded-md hover:bg-green-700">Add to Cart</button>
            </div>
        </div>
        <div class="product-card bg-white shadow-md rounded-lg overflow-hidden" data-category="nuts">
            <img src="images/almonds.jpg" alt="Almonds" class="w-full h-48 object-cover">
            <div class="p-4">
                <h5 class="text-lg font-semibold text-gray-800">Almonds</h5>
                <p class="text-green-600 font-bold mt-2">$5.00</p>
                <button class="mt-2 w-full bg-green-600 text-white py-2 rounded-md hover:bg-green-700">Add to Cart</button>
            </div>
        </div>
        <div class="product-card bg-white shadow-md rounded-lg overflow-hidden" data-category="grams">
            <img src="images/green-gram.jpg" alt="Green Gram" class="w-full h-48 object-cover">
            <div class="p-4">
                <h5 class="text-lg font-semibold text-gray-800">Green Gram</h5>
                <p class="text-green-600 font-bold mt-2">$3.00</p>
                <button class="mt-2 w-full bg-green-600 text-white py-2 rounded-md hover:bg-green-700">Add to Cart</button>
            </div>
        </div>
        <!-- Additional cards -->
        <div class="product-card bg-white shadow-md rounded-lg overflow-hidden" data-category="fruits">
            <img src="images/banana.jpg" alt="Banana" class="w-full h-48 object-cover">
            <div class="p-4">
                <h5 class="text-lg font-semibold text-gray-800">Banana</h5>
                <p class="text-green-600 font-bold mt-2">$1.50</p>
                <button class="mt-2 w-full bg-green-600 text-white py-2 rounded-md hover:bg-green-700">Add to Cart</button>
            </div>
        </div>
        <div class="product-card bg-white shadow-md rounded-lg overflow-hidden" data-category="vegetables">
            <img src="images/tomato.jpg" alt="Tomato" class="w-full h-48 object-cover">
            <div class="p-4">
                <h5 class="text-lg font-semibold text-gray-800">Tomato</h5>
                <p class="text-green-600 font-bold mt-2">$2.00</p>
                <button class="mt-2 w-full bg-green-600 text-white py-2 rounded-md hover:bg-green-700">Add to Cart</button>
            </div>
        </div>
        <div class="product-card bg-white shadow-md rounded-lg overflow-hidden" data-category="nuts">
            <img src="images/cashew.jpg" alt="Cashew" class="w-full h-48 object-cover">
            <div class="p-4">
                <h5 class="text-lg font-semibold text-gray-800">Cashew</h5>
                <p class="text-green-600 font-bold mt-2">$6.00</p>
                <button class="mt-2 w-full bg-green-600 text-white py-2 rounded-md hover:bg-green-700">Add to Cart</button>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="bg-gray-900 text-white text-center py-4 mt-10">
    <p>&copy; 2026 FruitHub. All Rights Reserved.</p>
</footer>

<!-- JavaScript for filtering -->
<script>
function filterCategory(category) {
    const cards = document.querySelectorAll('.product-card');
    cards.forEach(card => {
        if (category === 'all' || card.dataset.category === category) {
            card.style.display = 'block';
        } else {
            card.style.display = 'none';
        }
    });
}
</script>

</body>
</html>
