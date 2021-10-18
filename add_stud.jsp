<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>

<div class="container-fluid p-0 m-0">
    <%@include file="navbar.jsp" %> 
    
    <h1>Add Student Details</h1>
    <br>
    
    
    <form action="SaveStudServlet" method="post">
  <div class="mb-3">
    <label for="name" class="form-label">Student Name</label>
    <input  required 
    name="name"
    type="text"  
    class="form-control" 
    id="name" 
    placeholder="Enter name here"
    aria-describedby="emailHelp"/>
    <div id="emailHelp" class="form-text">We'll never share your datails with anyone else.</div>
  </div>
  <div class="mb-3">
   <label for="name" class="form-label">Qualification</label>
    <input 
    name="quali"
    type="text" required
    class="form-control" 
    id="name" 
    placeholder="Enter  here"
    aria-describedby="emailHelp"/>
    
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>



</div>
    
    
</body>
</html>