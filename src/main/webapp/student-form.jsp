<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Form</title>
</head>
<body>
	<div class="container">
	
	<c:if test="${student != null}">
	<form action="update" method="post">
	<h1>Edit Student</h1>
	<input type="hidden" name="id" value="<c:out value='${student.id}'/>"/>
	
	
	</c:if>
	
	<c:if test="${student == null}">
	
	<form action="addstudent" method="post">
	<h1>Add New Student</h1>
	
	
	</c:if>
		<h1>Add New Student</h1>
		<hr>
		
		
			<label for="name">Name</label><br>  
			<input type="text" name="name" value="<c:out value='${student.name}'/>" required size="50"/><br> 
			<label for="email">Email</label><br>
			<input type="text" name="email" value="<c:out value='${student.email}'/>" required size="50"/><br>
			<label for="course">Course</label><br> 
			<input type="text" name="course" value="<c:out value='${student.course}'/>" required size="50"/><br>
			
			<button type="submit">Save Student</button>
			
			</form>
		<br> 
		<a href="listStudents">Back to Student</a>

	</div>

</body>
</html>





