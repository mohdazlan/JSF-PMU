<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
</head>
<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="login-container text-center">
                  <!-- Display Error Message if it exists -->
                <%
                    String errorMessage = (String) request.getAttribute("errorMessage");
                    if (errorMessage != null) {
                %>
                <div class="alert alert-danger" role="alert">
                    <%= errorMessage %>
                </div>
                <% } %>
                <!-- Logo -->
                <img src="https://www.bing.com/th?id=OIP.Qp9P-BKTDF2qawCd4CQv6wHaHa&w=150&h=150&c=8&rs=1&qlt=90&o=6&cb=13&pid=3.1&rm=2" alt="Logo" class="logo">
                
                <!-- Login Form -->
                <form action="ProcessingServlet" method="post">
                    
                    <div class="mb-3">
                        <!-- Username Input -->
                        <div class="input-group">
                            <span class="input-group-text" id="basic-addon1">
                                <i class="bi bi-person-fill"></i> <!-- Optional Bootstrap icon -->
                            </span>
                            <input type="text" class="form-control" name="txtusername" placeholder="Username" required>
                        </div>
                    </div>

                    <div class="mb-3">
                        <!-- Password Input -->
                        <div class="input-group">
                            <span class="input-group-text" id="basic-addon2">
                                <i class="bi bi-lock-fill"></i> <!-- Optional Bootstrap icon -->
                            </span>
                            <input type="password" class="form-control" name="txtpassword" placeholder="Password" required>
                        </div>
                    </div>

                    <!-- Submit Button -->
                    <button type="submit" class="btn btn-primary w-100">Login</button>
                </form>
                
                <!-- Additional Links (optional) -->
                <div class="mt-3">
                    <a href="#">Forgot Password?</a>
                </div>
            </div>
        </div>
    </div>
</div>
<% 
    // Set an application-wide attribute
    application.setAttribute("appName", "My Web App");

    // Retrieve the application-wide attribute
    String appName = (String) application.getAttribute("appName");
    out.println("Application Name: " + appName);
%>

<!-- Bootstrap JS (optional, for Bootstrap components functionality) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>