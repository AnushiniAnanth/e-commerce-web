<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>FruitHub - Payment</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">

<div class="max-w-3xl mx-auto py-10 px-4 bg-white shadow-lg rounded-lg">
    <h2 class="text-2xl font-bold text-green-600 mb-6 text-center">Payment</h2>

    <!-- Product list -->
    <ul class="space-y-4">
        <li class="flex justify-between">
            <span>Apple</span><span class="text-green-600">$2.50</span>
        </li>
        <li class="flex justify-between">
            <span>Carrot</span><span class="text-green-600">$1.20</span>
        </li>
        <!-- Add more items dynamically -->
    </ul>

    <!-- Pay Now button -->
    <div class="text-center mt-8">
        <button onclick="showPaymentOptions()" class="bg-green-600 text-white px-6 py-3 rounded-md hover:bg-green-700">Pay Now</button>
    </div>

    <!-- Payment options -->
    <div id="paymentOptions" class="hidden mt-6 text-center">
        <h3 class="text-lg font-semibold mb-4">Choose Payment Method</h3>
        <button onclick="paymentSuccess()" class="bg-blue-600 text-white px-6 py-2 rounded-md hover:bg-blue-700 mr-4">UPI</button>
        <button onclick="paymentSuccess()" class="bg-purple-600 text-white px-6 py-2 rounded-md hover:bg-purple-700">Net Banking</button>
    </div>
</div>

<script>
function showPaymentOptions() {
    document.getElementById("paymentOptions").classList.remove("hidden");
}
function paymentSuccess() {
    alert("✅ Payment Successful! Thank you for shopping with FruitHub.");
    window.location.href = "success.jsp"; // redirect to success page
}
</script>

</body>
</html>
