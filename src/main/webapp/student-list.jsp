<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Records</title>
</head>
<body>
	<div class="container">
		<h1>Student Record Manager</h1>
		<a href="student-form.jsp">Add New Student </a>
		<hr>

		<table border="1" width="100%">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>Course</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="student" items="${ studentList}">
					<tr>
						<td><c:out value="${student.id}"></c:out></td> 
						<td><c:out value="${student.name}"></c:out></td> 
						<td><c:out value="${student.email}"></c:out></td>
						<td><c:out value="${student.course}"></c:out></td>
						
						<td>
						
						<a href="edit?id=${student.id}">Edit</a> &nbsp; &nbsp; &nbsp; 
						<a href="delete?id=${student.id}">Delete</a>
						
						</td>
					</tr>

				</c:forEach>
			</tbody>


		</table>



	</div>
</body>
</html>