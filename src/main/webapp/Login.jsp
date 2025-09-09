<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="png" href="./assets/logo/favicon.png">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
  <title>Carvilla - Login</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f5f5f5;
      margin: 0;
      padding: 0;
    }

    .login-container {
      display: flex;
      position: relative;
      top: 10%;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    .login-form {
      background-color: #fff;
      padding: 40px;
      border-radius: 8px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
      width: 400px;
      text-align: left;
    }

    .form-group {
      margin-bottom: 20px;
    }

    .form-group label {
      display: block;
      margin-bottom: 8px;
      color: #333;
      font-weight: bold;
    }

    .form-group input {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }

    .form-group button {
      background-color: #fb641b;
      color: #fff;
      padding: 10px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      width: 100%;
    }

    .form-group button:hover {
      background-color: #f35627;
    }

    .form-group p {
      margin-top: 10px;
      text-align: center;
    }

    .form-group a {
      color: #1e88e5;
      text-decoration: none;
    }

    .form-group a:hover {
      text-decoration: underline;
    }

    .success-message {
      background-color: #4CAF50;
      color: white;
      text-align: center;
      padding: 10px;
      border-radius: 4px;
      margin-bottom: 20px;
    }

    h1 {
      text-align: center;
    }
  </style>
</head>
<body>

<div class="login-container">
  <div class="login-form">
  <%
String msg ="";
if(session.getAttribute("msg2") != null) {
		 msg =""+(String) session.getAttribute("msg2");
%>
<div class="success-message">
<%= msg %>
</div>
<%
}
%>
    <h1>Login:</h1>
    <form action="UserController" method="post">
      <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
      </div>

      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
      </div>

      <div class="form-group">
        <button type="submit" name="btn" value="Login">Login</button>
      </div>

      <p>Don't have an account? <a href="./Register.jsp">Sign up</a></p>
    </form>
  </div>
</div>

</body>
</html>