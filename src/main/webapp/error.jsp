<%@ page isErrorPage="true" contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Action Failed</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fafafa;
            text-align: center;
            margin-top: 100px;
        }
        .error-box {
            display: inline-block;
            background: #fff3f3;
            border: 1px solid #f5c2c2;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 2px 8px rgba(0,0,0,0.1);
        }
        h2 {
            color: #d9534f;
        }
        p {
            color: #555;
        }
        .back-btn {
            display: inline-block;
            margin-top: 15px;
            padding: 8px 16px;
            background-color: #d9534f;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
        }
        .back-btn:hover {
            background-color: #c9302c;
        }
    </style>
</head>
<body>
    <div class="error-box">
        <h2>Your action failed!</h2>
        <p>Something went wrong while processing your request.</p>

        <% if (exception != null) { %>
            <p><b>Error Details:</b> <%= exception.getMessage() %></p>
        <% } %>

    </div>
</body>
</html>
