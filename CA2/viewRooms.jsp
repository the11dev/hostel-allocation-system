<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Hostel Rooms</title>
    <link rel="stylesheet" href="assets/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
<div class="site-wrapper">
    <header class="site-header">
        <div class="logo"><i class="fas fa-bed"></i>Hostel</div>
        <nav class="nav-links">
            <a href="index.jsp">Dashboard</a>
            <a href="addRoom.jsp">Add Room</a>
            <a href="allocateRoom.jsp">New Booking</a>
        </nav>
    </header>

    <section class="main-card">
        <h1 class="page-title">Available Rooms</h1>
        <div class="table-wrapper">
            <table>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Room No</th>
                    <th>Type</th>
                    <th>Rent (₹)</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <%
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hosteldb","root","Vm@1105");
                        ResultSet rs = con.createStatement().executeQuery("SELECT * FROM rooms");
                        while(rs.next()) {
                %>
                <tr>
                    <td><%= rs.getInt("id") %></td>
                    <td><%= rs.getString("room_number") %></td>
                    <td><%= rs.getString("room_type") %></td>
                    <td>₹<%= rs.getDouble("price") %></td>
                    <td>
                        <a class="btn btn-secondary" href="deleteRoom.jsp?id=<%=rs.getInt("id")%>">
                            <i class="fas fa-trash"></i>
                        </a>
                    </td>
                </tr>
                <%      } 
                    } catch(Exception e) { out.print(e); } 
                %>
                </tbody>
            </table>
        </div>
    </section>
</div>
</body>
</html>