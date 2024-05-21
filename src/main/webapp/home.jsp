<%@page import="com.Dto.Notes"%>
<%@page import="com.Dao.UserDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Dto.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="components/BootstrapCss.jsp" %>
</head>
<body>
	<%@ include file="components/navbar.jsp"%>
	<h1 class="text-center">Welcome To Home Page</h1>
		<%  String msg = (String)session.getAttribute("success");
		if(msg!=null){%>
			<p class="text-center text-success fs-4">
			<%= msg %> </p>
		<%
			session.removeAttribute("success");
		}%>
		<% 
		int id=(Integer)session.getAttribute("userId");
		UserDao dao = new UserDao();
		User user = dao.fetchUserById(id);
		List<Notes> list= user.getNote();
		%>
	<div class="container-border">
		<div>
			<a href="addNote.jsp" class="btn btn-sm btn-primary">Add Notes</a>
		</div>
			<div class="row">
			<%
			for(Notes n : list){
			%>
			<div class="col-md-4 card border border-primary m-4" style="width:15rem">
					<div class="card-body">
					<div class="d-flex flex-wrap justify-content-evenly">
					<div>
						<h2 class ="text-success card-tittle"><%=n.getTittle() %></h2>
						<a href="view_notes.jsp?id=<%=n.getId()%>" class="btn btn-sm btn-info">View</a>
						<a href="view_notes.jsp?id=<%=n.getId()%>" class="btn btn-sm btn-info">Update</a>
						<a href="delet_notes.jsp?id=<%=n.getId()%>" class="btn btn-sm btn-danger">Delete</a>
					</div>
					</div>
					</div>
				</div>
				<%}
				%>
			</div>
		</div>
</body>
</html>