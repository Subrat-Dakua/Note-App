<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<link rel="stylesheet" href="components/reg.css">
</head>
<body>
		 <div class="login-box">
        <h2>Registration Form</h2>
        <form action="">
            <div class="user-box">
                <input type="text" name= "id" required>
                <label for="">Id</label>
            </div>
            <div class="user-box">
                <input type="text" name= "name" required>
                <label for="">Name</label>
            </div>
            <div class="user-box">
                <input type="tel" name= "age" required>
                <label for="">Age</label>
            </div>
            <div class="user-box">
                <input type="text" name= "email" required>
                <label for="">Email</label>
            </div>
            <div class="user-box">
                <input type="password" name="password" required>
                <label for="">Password</label>
            </div>
            <div class="user-box">
                <input type="tel" name="mobile" required>
                <label for="">Mobile</label>
            </div>
            <a href="">
                <span></span>
                <span></span>
                <span></span>
                <span></span>Register
            </a>
        </form>
    </div>
</body>
</html>