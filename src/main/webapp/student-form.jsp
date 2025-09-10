<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Form</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container mt-4">
		<div class="card">
			<div class="card-body">
				<c:if test="${student != null}">
					<form action="update" method="post">
						<h1 class="card-title">Edit Student</h1>
						<input type="hidden" name="id"
							value="<c:out value='${student.id}'/>" />
				</c:if>

				<c:if test="${student == null}">

					<form action="addstudent" method="post">
						<h1 class="card-title">Add New Student</h1>
				</c:if>




				<label for="name" class="form-label">Name</label><br> <input
					type="text" name="name" class="form-control"
					value="<c:out value='${student.name}'/>" required size="50" /><br>

				<label for="email" class="form-label">Email</label><br> <input
					type="text" name="email" class="form-control"
					value="<c:out value='${student.email}'/>" required size="50" /><br>

				<label for="course" class="form-label">Course</label><br> <input
					type="text" name="course" class="form-control"
					value="<c:out value='${student.course}'/>" required size="50" /><br>

				<button type="submit" class="btn btn-success w-100 ">Save
					Student</button>

				</form>
			</div>
		</div>
		<br> <a href="listStudents" class="btn btn-link mt-2">Back to
			Student</a>

	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>





