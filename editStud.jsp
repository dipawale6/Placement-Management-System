<%@page import="com.helper.*,org.hibernate.*,com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Student Details</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

<div class="container">
		<%@include file="navbar.jsp"%>
		<h1>Edit your Details</h1>
		<br>

		<%
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Student note = (Student) s.get(Student.class, noteId);
		%>


		<form action="UpdateStudServlet" method="post">

			<input value="<%=note.getId()%>" name="noteId" type="hidden" />

			<div class="form-group">
				<label for="title">Student Name</label> <input name="title" required
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter here"
					value="<%=note.getName()%>" />

			</div>


			<div class="form-group">
				<label for="content">Student Details</label>
				<textarea name="content" required id="content"
					placeholder="Enter  here" class="form-control"
					style="height: 300px;"><%=note.getQualification()%>
					</textarea>


			</div>

			<div class="container text-center">

				<button type="submit" class="btn btn-success">Save your
					Details</button>
			</div>

		</form>


	</div>
</body>
</html>