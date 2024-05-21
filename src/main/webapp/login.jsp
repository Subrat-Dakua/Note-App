<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="components/logincode.css">
</head>
<body>
	 <div class="login-box">
        <h2>Login Form</h2>
         <% String msg=(String)session.getAttribute("wrong");
			if(msg!=null){%>
			<h3 class="text-center text-danger"><%=msg%></h3>
		<%
			session.removeAttribute("wrong");
			}
		%>	
        <form action="login"method="post">
            <div class="user-box">
                <input type="text" name= "email" required>
                <label for="">Email</label>
            </div>
            <div class="user-box">
                <input type="password" name="password" required>
                <label for="">Password</label>
            </div>
            <div class="anchor">
                <span></span>
                <span></span>
                <span></span>
                <span></span><input type ="submit" value="Login">
            </div>
        </form>
    </div>
	
</body>
</html>