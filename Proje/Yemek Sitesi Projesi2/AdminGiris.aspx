﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminGiris.aspx.cs" Inherits="Yemek_Sitesi_Projesi2.AdminGiris" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login & Sign Up</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    form {
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    input[type="text"],
    input[type="password"],
    input[type="submit"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      border-radius: 4px;
      border: 1px solid #ccc;
      box-sizing: border-box;
    }
    input[type="submit"] {
      background-color: #007bff;
      color: #fff;
      cursor: pointer;
    }
    input[type="submit"]:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>

    <div>
        <form id="loginForm">
          <h2>Login</h2>
          <input type="text" id="username" placeholder="Username" required>
          <input type="password" id="password" placeholder="Password" required>
          <input type="submit" value="Login" onclick="checkCredentials(event)">
        </form>
      </div>
      
      <script>
        function checkCredentials(event) {
          event.preventDefault();
      
          const username = document.getElementById("username").value;
          const password = document.getElementById("password").value;
      
          
          if (username === "Ceyhun" && password === "1242") {
            window.location.href = "Admin.aspx"; 
          } else {
            alert("Kullanıcı adı veya şifre yanlış."); 
        }
      </script>
</body>
</html>
