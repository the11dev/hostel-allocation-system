<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head><title>Save Room</title><link rel="stylesheet" href="assets/style.css"></head>
<body>
<div class="site-wrapper">
<section class="main-card">
    <%
        String roomNo = request.getParameter("room_number");
        String type = request.getParameter("room_type");
        String price = request.getParameter("price");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hosteldb","root","Vm@1105");
            PreparedStatement ps = con.prepareStatement("INSERT INTO rooms(room_number, room_type, price) VALUES (?, ?, ?)");
            ps.setString(1, roomNo);
            ps.setString(2, type);
            ps.setString(3, price);
            ps.executeUpdate();
    %>
            <div class="success-message">Room <%= roomNo %> added successfully!</div>
    <%
        } catch(Exception e) {
            out.println("<div class='error-message'>Error: " + e + "</div>");
        }
    %>
    <br>
    <a href="addRoom.jsp" class="btn btn-secondary">Add Another</a>
    <a href="viewRooms.jsp" class="btn btn-primary">View Rooms</a>
</section>
</div>
</body>
</html>