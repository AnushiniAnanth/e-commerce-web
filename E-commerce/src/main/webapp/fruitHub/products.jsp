<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>FruitHub - Products</title>
    <!-- Tailwind CSS via CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">

<div class="max-w-7xl mx-auto py-10 px-4">
    <h2 class="text-3xl font-bold text-green-600 mb-8 text-center">Shop Products</h2>
    
    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
        <c:forEach var="p" items="${products}">
            <div class="bg-white shadow-md rounded-lg overflow-hidden hover:shadow-lg transition">
                <img src="${p.imageUrl}" alt="${p.name}" class="w-full h-48 object-cover">
                <div class="p-4">
                    <h5 class="text-lg font-semibold text-gray-800">${p.name}</h5>
                    <p class="text-green-600 font-bold mt-2">$${p.price}</p>
                    <a href="cart?action=add&id=${p.id}" 
                       class="mt-4 inline-block w-full bg-green-600 text-white py-2 rounded-md text-center hover:bg-green-700 transition">
                        Add to Cart
                    </a>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>
