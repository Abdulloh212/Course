<%--
  Created by IntelliJ IDEA.
  User: mastu
  Date: 02.12.2024
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Payment</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<%
  int id =Integer.parseInt(request.getParameter("id"));
%>
<body class="bg-light">
<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="card shadow-sm">
        <div class="card-header text-center bg-primary text-white">
          <h4>Payment</h4>
        </div>
        <div class="card-body">
          <form action="/payment" method="POST">
            <div class="mb-3">
              <label for="amount" class="form-label">Enter Amount</label>
              <input type="number" class="form-control" id="amount" name="amount" placeholder="Enter amount" required>
              <input type="hidden" name="id" value="<%=id%>">
            </div>
            <div class="d-grid">
              <button type="submit" class="btn btn-primary">Pay</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>

