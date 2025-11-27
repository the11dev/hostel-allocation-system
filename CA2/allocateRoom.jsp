<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Allocate Room</title>
    <link rel="stylesheet" href="assets/style.css">
</head>
<body>
<div class="site-wrapper">
    <header class="site-header">
        <div class="logo">Hostel</div>
        <nav class="nav-links">
            <a href="index.jsp">Dashboard</a>
            <a href="viewBookings.jsp">Bookings</a>
        </nav>
    </header>

    <section class="main-card">
        <h1 class="page-title">Allocate Room to Student</h1>
        <form action="saveBooking.jsp" method="post" class="form-grid">
            
            <div class="form-group">
                <label>Student Name</label>
                <input type="text" name="student_name" required placeholder="Enter student full name">
            </div>

            <div class="form-group">
                <label>Select Room</label>
                <select name="room_id" required>
                    <option value="">-- Choose Room --</option>
                    <%  
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hosteldb","root","Vm@1105");
                            ResultSet rs = con.createStatement().executeQuery("SELECT * FROM rooms");
                            while(rs.next()) {
                    %>
                        <option value="<%= rs.getInt("id") %>">
                            Room <%= rs.getString("room_number") %> (<%= rs.getString("room_type") %>) - ₹<%= rs.getDouble("price") %>
                        </option>
                    <%      }
                        } catch(Exception e){}
                    %>
                </select>
            </div>

            <div style="margin-top:15px;">
                <button type="submit" class="btn btn-primary">Confirm Booking</button>
                <a href="index.jsp" class="btn btn-secondary">Cancel</a>
            </div>
        </form>
    </section>
</div>
</body>
</html>