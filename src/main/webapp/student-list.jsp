<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Records</title>
</head>
<body>
    <div class="container">
        <h1>Student Record Manager</h1>
        <a href="student-form.jsp">Add New Student</a>
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
                <c:choose>
                    <c:when test="${not empty studentList}">
                        <c:forEach var="student" items="${studentList}">
                            <tr>
                                <td><c:out value="${student.id}" /></td>
                                <td><c:out value="${student.name}" /></td>
                                <td><c:out value="${student.email}" /></td>
                                <td><c:out value="${student.course}" /></td>
                                <td>
                                    <a href="edit?id=${student.id}">Edit</a> &nbsp;
                                    <a href="delete?id=${student.id}">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <tr><td colspan="5">No student records found.</td></tr>
                    </c:otherwise>
                </c:choose>
            </tbody>
        </table>
    </div>
</body>
</html>
