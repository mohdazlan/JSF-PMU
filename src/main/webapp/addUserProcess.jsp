<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Processing...</title>
</head>
<body>

<%
    // Getting form data
    String fullName = request.getParameter("fullName");
    String idNumber = request.getParameter("idNumber");
    String regNumber = request.getParameter("regNumber");
    String phoneNumber = request.getParameter("phoneNumber");
    String department = request.getParameter("department");

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Establishing database connection
        Class.forName("net.sourceforge.jtds.jdbc.Driver"); // JTDS driver
        conn = DriverManager.getConnection("jdbc:jtds:sqlserver://localhost:1433/JSF-PMU", "sa", "p@ssw0rd");

        // SQL query to insert new staff
        String sql = "INSERT INTO StaffDetail (StaffFullName, StaffIdentificationNumber, StaffRegistrationNumber, StaffPhoneNumber, StaffDepartment) VALUES (?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, fullName);
        pstmt.setString(2, idNumber);
        pstmt.setString(3, regNumber);
        pstmt.setString(4, phoneNumber);
        pstmt.setString(5, department);
        pstmt.executeUpdate();

        // Redirecting back to the manageUsers.jsp after successful insertion
        response.sendRedirect("manageUsers.jsp");

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>

</body>
</html>
