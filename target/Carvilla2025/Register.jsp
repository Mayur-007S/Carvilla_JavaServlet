<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="png" href="./assets/logo/favicon.png">
  <title>Carvilla - Sign Up</title>
  <link rel="stylesheet" href=".\\CSS\\signup.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
</head>
<body>

<div class="signup-container">
  <div class="signup-form">
  <%
String msg ="";
if(session.getAttribute("msg") != null) {
		 msg =""+(String) session.getAttribute("msg");
%>
<div class="success-message">
<%= msg %>
</div>
<%
session.removeAttribute("msg");
}
%>
    <h1>Sign Up:</h1>
    <form action="UserController" method="post">
      <div class="form-group">
        <label for="fullname">Full Name:</label>
        <input type="text" id="fullname" name="fullname" required>
      </div>

      <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
      </div>

      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required 
        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).{8,}"  title="Password must be at least 8 characters long, include at least one uppercase letter, one lowercase letter, one number, and one special character.">
      </div>

      <div class="form-group">
        <label for="repeat-password">Repeat Password:</label>
        <input type="password" id="repeat-password" name="repeat-password" required>
      </div>

      <div class="form-group">
        <button type="submit" name="btn" value="Register">Sign Up</button>
      </div>

      <p>Already have an account? <a href="./Login.jsp">Sign In</a></p>
    </form>
  </div>
</div>

</body>
</html>