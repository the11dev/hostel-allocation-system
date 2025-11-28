<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>All Bookings</title>
    <link rel="stylesheet" href="assets/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
<div class="site-wrapper">
    <header class="site-header">
        <div class="logo">Hostel</div>
        <nav class="nav-links">
            <a href="index.jsp">Dashboard</a>
            <a href="allocateRoom.jsp">New Booking</a>
        </nav>
    </header>

    <section class="main-card">
        <h1 class="page-title">Booking History</h1>
        <div class="table-wrapper">
            <table>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Student Name</th>
                    <th>Room No</th>
                    <th>Type</th>
                    <th>Date</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <%
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hosteldb","root","pass");
                        String q = "SELECT b.booking_id, b.student_name, b.booking_date, r.room_number, r.room_type " +
                                   "FROM bookings b JOIN rooms r ON b.room_id = r.id ORDER BY b.booking_id DESC";
                        ResultSet rs = con.createStatement().executeQuery(q);
                        while(rs.next()) {
                %>
                <tr>
                    <td><%= rs.getInt("booking_id") %></td>
                    <td><%= rs.getString("student_name") %></td>
                    <td><%= rs.getString("room_number") %></td>
                    <td><%= rs.getString("room_type") %></td>
                    <td><%= rs.getString("booking_date") %></td>
                    <td>
                        <a class="btn btn-secondary" href="deleteBooking.jsp?id=<%=rs.getInt("booking_id")%>">
                           <i class="fas fa-trash"></i> Remove
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
