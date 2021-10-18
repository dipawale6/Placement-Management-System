<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Student</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Students:</h1>


		<div class="row">

			<div class="col-12">

				<%
					Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Student");
				List<Student> list = q.list();
				for (Student note : list) {
				%>

				<div class="card mt-3" >
					<img class="card-img-top m-4 mx-auto" style="max-width:100px;" src="log3.jpeg" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%= note.getName()%></h5>
						<p class="card-text">
						<%= note.getQualification()%>
						</p>
						<p ><b class="text-primary"><%= note.getAddedDate()  %></b></p>
						<div class="container text-center mt-2">
						<a href="DeleteStudServlet?note_id=<%= note.getId()%>" class="btn btn-danger">Delete</a>
						<a href="editStud.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
						</div>
					</div>
				</div>


				<%
					}

				s.close();
				%>


			</div>

		</div>


	</div>
</body>
</html>