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
        
        <% String msg=(String)session.getAttribute("success");
        if(msg!=null){%>
        <p class=" text-align-center text-success text-white fs-4"> <%= msg%></p>
        <%
			session.removeAttribute("success");
		}
		%>
        <form action="register" method="post">
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
            <div class="anchor">
                <span></span>
                <span></span>
                <span></span>
                <span></span><input type="submit" value="Register" >
            </div>
        </form>
    </div>
</body>
</html>