<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Staff</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">Admin Dashboard</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="booking.jsp">Booking</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="manageUsers.jsp">Manage Users</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Add New Staff Form -->
    <div class="container mt-5">
        <h3>Add New Staff</h3>
        <form action="addUserProcess.jsp" method="post">
            <div class="mb-3">
                <label for="fullName" class="form-label">Staff Full Name</label>
                <input type="text" class="form-control" id="fullName" name="fullName" required>
            </div>
            <div class="mb-3">
                <label for="idNumber" class="form-label">Staff Identification Number</label>
                <input type="text" class="form-control" id="idNumber" name="idNumber" required>
            </div>
            <div class="mb-3">
                <label for="regNumber" class="form-label">Staff Registration Number</label>
                <input type="text" class="form-control" id="regNumber" name="regNumber" required>
            </div>
            <div class="mb-3">
                <label for="phoneNumber" class="form-label">Staff Phone Number</label>
                <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" required>
            </div>
            <div class="mb-3">
                <label for="department" class="form-label">Staff Department</label>
                <input type="text" class="form-control" id="department" name="department" required>
            </div>
            <button type="submit" class="btn btn-primary">Add Staff</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
