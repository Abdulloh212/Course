<%@ page import="java.util.List" %>
<%@ page import="pdp.uz.coursehw.Entity.Groups" %>
<%@ page import="com.sun.security.auth.module.UnixSystem" %>
<%@ page import="pdp.uz.coursehw.Entity.GroupsRepo" %><%--
  Created by IntelliJ IDEA.
  User: mastu
  Date: 02.12.2024
  Time: 17:57
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<head>
    <title>Module</title>
</head>
<body>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    List<Groups> groups = GroupsRepo.getGroups(id);
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
        for (Groups group : groups) {
    %>
    <tr>
        <td><%=group.getId()  %></td>
        <td><%=group.getName()%></td>
        <td>
            <form action="/Students.jsp" method="post">
                <input type="hidden" value="<%=group.getId()%>" name="id">
                <button class="btn btn-success">View Students</button>
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
