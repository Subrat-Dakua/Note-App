<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="components/BootstrapCss.jsp" %>
</head>
<body>
	
	
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Add Notes</p>
		
							<%
								String msg = (String)session.getAttribute("success");
							if(msg!=null){%>
								<p class="text-center text-success fs-4"><%= msg %></p>
							<%
								session.removeAttribute("success");
							}%>
						<form action="addnote" method="post">
							<div class="mb-3">
							<label class="form-label">Title</label><input
							name="title" type="text" class="form-control" required>
							</div>
				
							<div class="mb-3">
							<label class="form-label">Description</label>
							<textarea rows="10" cols="45" class="form-control" name="description" required></textarea>
							</div>
							<button type="submit" class="btn bg-primary text-white col-md-12">Save</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>