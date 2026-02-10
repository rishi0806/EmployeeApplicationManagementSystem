<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employees Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

<style>
body{
    font-family:'Poppins',sans-serif;
    background:#f4f7fb;
}

.hero{
    background: linear-gradient(rgba(0,0,0,.6), rgba(0,0,0,.6)),
    url("https://images.unsplash.com/photo-1497366216548-37526070297c");
    background-size:cover;
    background-position:center;
    color:white;
    padding:60px 0;
    text-align:center;
}

.dashboard-card{
    margin-top:-40px;
    background:white;
    border-radius:20px;
    box-shadow:0 10px 30px rgba(0,0,0,0.15);
    padding:30px;
}

.table thead{
    background:#2c3e50;
    color:white;
}

.btn-add{
    background:linear-gradient(135deg,#1abc9c,#16a085);
    color:white;
    border:none;
    border-radius:10px;
    padding:10px 18px;
    font-weight:600;
}

.btn-edit{
    background:#3498db;
    color:white;
    border:none;
    padding:6px 12px;
    border-radius:8px;
}

.btn-delete{
    background:#e74c3c;
    color:white;
    border:none;
    padding:6px 12px;
    border-radius:8px;
}

.btn-add:hover,.btn-edit:hover,.btn-delete:hover{
    opacity:0.9;
    transform:scale(1.05);
}

.footer{
    background:#2c3e50;
    color:white;
    text-align:center;
    padding:12px;
    position:fixed;
    bottom:0;
    width:100%;
    font-size:14px;
    letter-spacing:0.5px;
}

</style>
</head>

<body>

<div class="hero">
    <h1>Employee Management System</h1>
    <p>HR Dashboard • Manage your workforce efficiently</p>
</div>

<div class="container">

    <div class="dashboard-card">

        <div class="d-flex justify-content-between align-items-center mb-4">
            <h3 class="fw-semibold">Employees List</h3>

            <a href="${pageContext.request.contextPath}/employees/new" class="btn btn-add">
                + Add Employee
            </a>
        </div>

        <div class="table-responsive">
            <table class="table table-hover align-middle">

                <thead>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>Department</th>
                        <th class="text-center">Actions</th>
                    </tr>
                </thead>

                <tbody>
                <c:forEach var="employee" items="${employees}">
                    <tr>
                        <td>${employee.firstName}</td>
                        <td>${employee.lastName}</td>
                        <td>${employee.email}</td>
                        <td>${employee.department}</td>

                        <td class="text-center">
                            <a href="${pageContext.request.contextPath}/employees/edit/${employee.id}" 
                               class="btn btn-edit btn-sm">
                               Edit
                            </a>

                            <a href="${pageContext.request.contextPath}/employees/delete/${employee.id}" 
                               class="btn btn-delete btn-sm"
                               onclick="return confirm('Are you sure you want to delete this employee?');">
                               Delete
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>

            </table>
        </div>

    </div>

</div>

<div class="footer">
    © 2026 Employee Management System | Developed by Rishi Kumar
</div>

</body>
</html>
