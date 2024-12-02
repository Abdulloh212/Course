<%@ page import="pdp.uz.coursehw.Entity.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="pdp.uz.coursehw.Entity.StudentsRepo" %><%--
  Created by IntelliJ IDEA.
  User: mastu
  Date: 02.12.2024
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Students</title>
</head>
<body>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    List<Student> students = StudentsRepo.getStudents(id);
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
        for (Student student : students) {
    %>
    <tr>
        <td><%=student.getId()  %></td>
        <td><%=student.getFullname() %></td>
        <td>
            <form action="/Payment.jsp" method="post">
                <input type="hidden" value="<%=student.getId()%>" name="id">
                <button class="btn btn-success">Pay</button>
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
