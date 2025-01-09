<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>500 - Internal Server Error</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            color: #343a40;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        .container {
            text-align: center;
            max-width: 600px;
            padding: 20px;
        }
        h1 {
            font-size: 4rem;
            margin-bottom: 20px;
            color: #dc3545;
        }
        p {
            font-size: 1.25rem;
            margin-bottom: 30px;
        }
        a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
        .illustration {
            margin-top: 20px;
        }
        .illustration img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>500</h1>
    <p>Oops! Something went wrong on our end. Please try again later.</p>
    <a href="<%= request.getContextPath() %>/">Go back to Homepage</a>
    <div class="illustration">
        <img src="https://via.placeholder.com/400x200?text=Error+500" alt="Error 500 Illustration">
    </div>
</div>
</body>
</html>
