<%@ page import="java.util.List" %>
<%@ page import="pdp.uz.coursehw.Entity.Module" %>
<%@ page import="pdp.uz.coursehw.Entity.ModuleRepo" %><%--
  Created by IntelliJ IDEA.
  User: mastu
  Date: 02.12.2024
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Module</title>
</head>
<body>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    List<Module> moduls = ModuleRepo.getModules(id);
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
        for (Module module : moduls) {
    %>
    <tr>
        <td><%=module.getId()  %></td>
        <td><%=module.getName() %></td>
        <td>
            <form action="/Groups.jsp" method="post">
                <input type="hidden" value="<%=module.getId()%>" name="id">
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
