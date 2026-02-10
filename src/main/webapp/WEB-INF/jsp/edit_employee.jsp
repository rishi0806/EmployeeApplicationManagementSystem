<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

<style>
body{
    font-family: 'Poppins', sans-serif;
    height:100vh;
    background: linear-gradient(rgba(0,0,0,.6), rgba(0,0,0,.6)),
    url("https://images.unsplash.com/photo-1551836022-d5d88e9218df");
    background-size:cover;
    background-position:center;
}

.main-card{
    backdrop-filter: blur(12px);
    background: rgba(255,255,255,0.93);
    border-radius:20px;
    box-shadow:0 10px 40px rgba(0,0,0,0.25);
    padding:40px;
}

.title{
    font-weight:600;
    color:#2c3e50;
}

.subtitle{
    color:#7f8c8d;
    margin-bottom:25px;
}

.form-control{
    border-radius:10px;
    padding:12px;
}

.btn-update{
    background: linear-gradient(135deg,#3498db,#2980b9);
    border:none;
    padding:12px;
    font-weight:600;
    border-radius:10px;
    transition:.3s;
}

.btn-update:hover{
    transform:scale(1.05);
    background: linear-gradient(135deg,#2980b9,#3498db);
}

.brand{
    color:white;
    font-weight:600;
    letter-spacing:1px;
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

<nav class="navbar navbar-dark bg-transparent px-5 pt-4">
    <span class="navbar-brand brand fs-3">Employee Portal</span>
</nav>

<div class="container d-flex justify-content-center align-items-center" style="height:85vh;">
    
    <div class="col-md-6">
        <div class="main-card">

            <h2 class="title text-center">Update Employee</h2>
            <p class="subtitle text-center">Modify employee details securely</p>

            <form action="${pageContext.request.contextPath}/employees/${employee.id}" method="post">

                <div class="mb-3">
                    <label class="form-label">First Name</label>
                    <input type="text" name="firstName" value="${employee.firstName}" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Last Name</label>
                    <input type="text" name="lastName" value="${employee.lastName}" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Email Address</label>
                    <input type="email" name="email" value="${employee.email}" class="form-control" required>
                </div>

                <div class="mb-4">
                    <label class="form-label">Department</label>
                    <input type="text" name="department" value="${employee.department}" class="form-control" required>
                </div>

                <button type="submit" class="btn btn-update w-100">Update Employee</button>

            </form>

        </div>
    </div>

</div>

<div class="footer">
    © 2026 Employee Management System | Developed by Rishi Kumar
</div>

</body>
</html>
