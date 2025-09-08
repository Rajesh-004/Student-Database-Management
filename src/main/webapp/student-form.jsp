<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Students</title>
</head>
<body>
	<div class="container">
		<h1>Add New Student</h1>
		<hr>
		<form action="add" method="post">

			<label for="name">Name</label><br> <input type="text"
				name="name" required size="50"><br> <label for="email">Email</label><br>
			<input type="text" name="email" required size="50"><br>

			<label for="course">Course</label><br> <input type="text"
				name="course" required size="50"><br>

			<button type="submit">Save Student</button>


		</form>
		<br> <a href="listStudents">Back to Student</a>

	</div>

</body>
</html>