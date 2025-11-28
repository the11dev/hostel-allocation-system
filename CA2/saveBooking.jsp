<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head><title>Booking Saved</title><link rel="stylesheet" href="assets/style.css"></head>
<body>
<div class="site-wrapper">
    <section class="main-card">
        <%
            String student = request.getParameter("student_name");
            String roomId = request.getParameter("room_id");

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hosteldb", "root", "pass");
                PreparedStatement ps = con.prepareStatement("INSERT INTO bookings (student_name, room_id) VALUES (?, ?)");
                ps.setString(1, student);
                ps.setString(2, roomId);
                ps.executeUpdate();
        %>
            <h1 class="success-message">Booking Successful!</h1>
            <p>Room allocated to <strong><%= student %></strong>.</p>
            <br>
            <a class="btn btn-primary" href="viewBookings.jsp">View Bookings</a>
        <%
            } catch(Exception e) {
                out.print("<h2 class='error-message'>Error: "+e+"</h2>");
            }
        %>
    </section>
</div>
</body>
</html>
