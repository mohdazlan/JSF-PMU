<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room Booking</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Room Booking</a>
    </nav>

    <div class="container mt-5">
        <h3 class="text-center">Book a Room</h3>
        <form action="processBookingServlet" method="post">
            <div class="form-group">
                <label for="facility">Select Room</label>
                <select class="form-control" id="facility" name="facility">
                    <%
                        // Fetch available rooms from the RoomApplicationDetail table
                        Class.forName("net.sourceforge.jtds.jdbc.Driver");
                        Connection conn = DriverManager.getConnection("jdbc:jtds:sqlserver://localhost:1433/JSF-PMU", "sa", "p@ssw0rd");
                        Statement stmt = conn.createStatement();
                        String query = "SELECT DISTINCT AvailableFacility FROM RoomApplicationDetail";
                        ResultSet rs = stmt.executeQuery(query);
                        while (rs.next()) {
                    %>
                    <option value="<%= rs.getString("AvailableFacility") %>"><%= rs.getString("AvailableFacility") %></option>
                    <%
                        }
                        rs.close();
                        stmt.close();
                        conn.close();
                    %>
                </select>
            </div>

            <div class="form-group">
                <label for="people">Number of People</label>
                <input type="number" class="form-control" id="people" name="people" required>
            </div>

            <div class="form-group">
                <label for="startDate">Start Date</label>
                <input type="date" class="form-control" id="startDate" name="startDate" required>
            </div>

            <div class="form-group">
                <label for="endDate">End Date</label>
                <input type="date" class="form-control" id="endDate" name="endDate" required>
            </div>

            <div class="form-group">
                <label for="startTime">Start Time</label>
                <input type="time" class="form-control" id="startTime" name="startTime" required>
            </div>

            <div class="form-group">
                <label for="endTime">End Time</label>
                <input type="time" class="form-control" id="endTime" name="endTime" required>
            </div>

            <div class="form-group">
                <label for="reason">Reason for Booking</label>
                <textarea class="form-control" id="reason" name="reason" rows="3" required></textarea>
            </div>

            <button type="submit" class="btn btn-primary mt-3">Submit Booking</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
