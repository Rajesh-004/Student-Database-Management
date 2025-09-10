<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Records</title> 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
rel="stylesheet">
</head>
<body>
	<div class="container mt-4">
		<div class="d-flex justify-content-between align-items-center mb-3">
		
		<h1>Student Record Manager</h1>
		<a href="student-form.jsp" class="btn btn-primary">Add New Student</a>
		</div>
			
		<table class="table table-striped table-bordered">
			<thead class="table-dark">
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>Course</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${not empty studentList}">
						<c:forEach var="student" items="${studentList}">
							<tr>
								<td><c:out value="${student.id}" /></td>
								<td><c:out value="${student.name}" /></td>
								<td><c:out value="${student.email}" /></td>
								<td><c:out value="${student.course}" /></td>
								<td><a href="edit?id=${student.id}" class ="btn btn-warning btn-sm">Edit</a> &nbsp; <a
									href="delete?id=${student.id}"
									onclick="return confirm ('Are you sure want to delete this record?')" class="btn btn-danger btn-sm">Delete</a></td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5">No student records found.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
