<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>FruitHub - Cart</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">

<div class="max-w-7xl mx-auto py-10 px-4">
    <h2 class="text-3xl font-bold text-green-600 mb-6 text-center">Your Cart</h2>

    <!-- Example product cards -->
    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">
        <div class="bg-white shadow-md rounded-lg overflow-hidden">
            <img src="images/apple.jpg" alt="Apple" class="w-full h-48 object-cover">
            <div class="p-4">
                <h5 class="text-lg font-semibold text-gray-800">Apple</h5>
                <p class="text-green-600 font-bold mt-2">$2.50</p>
            </div>
        </div>
        <div class="bg-white shadow-md rounded-lg overflow-hidden">
            <img src="images/carrot.jpg" alt="Carrot" class="w-full h-48 object-cover">
            <div class="p-4">
                <h5 class="text-lg font-semibold text-gray-800">Carrot</h5>
                <p class="text-green-600 font-bold mt-2">$1.20</p>
            </div>
        </div>
        <!-- Add more product cards dynamically -->
    </div>

    <!-- Buy button -->
    <div class="text-center mt-8">
        <a href="payment.jsp" class="bg-green-600 text-white px-6 py-3 rounded-md hover:bg-green-700">Buy Products</a>
    </div>
</div>

</body>
</html>
