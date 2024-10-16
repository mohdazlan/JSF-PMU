<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Room Bookings</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Room Booking Admin</a>
    </nav>

    <div class="container mt-5">
        <h3 class="text-center">View Room Applications</h3>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Facility</th>
                    <th>No. of People</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Start Time</th>
                    <th>End Time</th>
                    <th>Reason</th>
                </tr>
            </thead>
            <tbody>
                <%
                    // Connect to the SQL Server database
                    Class.forName("net.sourceforge.jtds.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:jtds:sqlserver://localhost:1433/JSF-PMU", "sa", "p@ssw0rd");

                    // Query the RoomApplicationDetail table
                    Statement stmt = conn.createStatement();
                    String query = "SELECT AvailableFacility, NumberOfPeople, StartDate, EndDate, StartTime, EndTime, ReasonToUseFacility FROM RoomApplicationDetail";
                    ResultSet rs = stmt.executeQuery(query);

                    // Display the result in the table
                    while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getString("AvailableFacility") %></td>
                    <td><%= rs.getInt("NumberOfPeople") %></td>
                    <td><%= rs.getDate("StartDate") %></td>
                    <td><%= rs.getDate("EndDate") %></td>
                    <td><%= rs.getTime("StartTime") %></td>
                    <td><%= rs.getTime("EndTime") %></td>
                    <td><%= rs.getString("ReasonToUseFacility") %></td>
                </tr>
                <%
                    }

                    // Clean up resources
                    rs.close();
                    stmt.close();
                    conn.close();
                %>
            </tbody>
        </table>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
