<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<%
// Establishing connection to the SQL Server database 
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;


	Class.forName("net.sourceforge.jtds.jdbc.Driver"); // JTDS driver
	conn = DriverManager.getConnection("jdbc:jtds:sqlserver://localhost:1433/JSF-PMU", "sa",
	"p@ssw0rd");
	stmt = conn.createStatement();

	// Delete staff if requested
	String staffRegNoToDelete = request.getParameter("deleteStaff");

		String deleteSQL = "DELETE FROM StaffDetail WHERE StaffRegNumber = '" + staffRegNoToDelete + "'";
		stmt.executeUpdate(deleteSQL);


	// Query to display all staff
	String sql = "SELECT StaffFullName, StaffIDNumber, StaffRegNumber, StaffPhoneNumber, StaffDepartment FROM StaffDetail";
	rs = stmt.executeQuery(sql);
%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Manage Users</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp">Admin Dashboard</a>
		</div>
	</nav>

	<div class="container mt-5">
		<h3>Manage Users</h3>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Staff Full Name</th>
					<th>Staff ID Number</th>
					<th>Staff Phone Number</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<%
				while (rs.next()) {
					String fullName = rs.getString("StaffFullName");
					String idNumber = rs.getString("StaffIDNumber");
					String regNumber = rs.getString("StaffRegNumber");
					String phoneNumber = rs.getString("StaffPhoneNumber");
					String department = rs.getString("StaffDepartment");
				%>
				<tr>
					<td><%=fullName%></td>
					<td><%=idNumber%></td>
					<td><%=regNumber%></td>
					<td><%=phoneNumber%></td>
					<td><%=department%></td>
					<td>
						<!-- Delete Button -->
						<form method="post" action="manageUsers.jsp"
							style="display: inline;">
							<input type="hidden" name="deleteStaff" value="<%=regNumber%>">
							<button type="submit" class="btn btn-danger btn-sm">Delete</button>
						</form>
					</td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
		<a href="addUser.jsp" class="btn btn-primary mt-3">Add New User</a>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


