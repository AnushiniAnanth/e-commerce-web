<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>FruitHub - Signup</title>
    <!-- Tailwind CSS via CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">

<div class="flex items-center justify-center min-h-screen">
    <div class="bg-white shadow-lg rounded-lg p-8 w-full max-w-md">
        <h2 class="text-2xl font-bold text-green-600 mb-6 text-center">Create a FruitHub Account</h2>
        
        <form action="signup" method="post" class="space-y-4">
            <div>
                <label class="block text-gray-700 mb-1">Name</label>
                <input type="text" name="name" 
                       class="w-full px-3 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-green-500" 
                       required>
            </div>
            <div>
                <label class="block text-gray-700 mb-1">Email</label>
                <input type="email" name="email" 
                       class="w-full px-3 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-green-500" 
                       required>
            </div>
            <div>
                <label class="block text-gray-700 mb-1">Password</label>
                <input type="password" name="password" 
                       class="w-full px-3 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-green-500" 
                       required>
            </div>
            <button type="submit" 
                    class="w-full bg-green-600 text-white py-2 rounded-md hover:bg-green-700 transition">
                Signup
            </button>
        </form>
        
        <p class="mt-4 text-center text-gray-600">
            Already have an account? 
            <a href="login.jsp" class="text-green-600 hover:underline">Login here</a>
        </p>
    </div>
</div>

</body>
</html>
