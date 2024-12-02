<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="pdp.uz.coursehw.Entity.Course" %>
<%@ page import="pdp.uz.coursehw.Entity.CourseRepo" %>
<!DOCTYPE html>
<html>
<head>
    <title>Courses</title>
</head>
<body>
<%
    List<Course> courses = CourseRepo.getCourses();
%>
<table class="table">
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <%
        for (Course course : courses) {
    %>
    <tr>
        <td><%=course.getId()  %></td>
        <td><%=course.getName() %></td>
        <td>
            <form action="/Module.jsp" method="post">
        <input type="hidden" value="<%=course.getId()%>" name="id">
                <button class="btn btn-success">View detail</button>
            </form>
        </td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
</body>
</html>

</body>
</html>