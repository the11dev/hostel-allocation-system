<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Hostel Dashboard</title>
    <link rel="stylesheet" href="assets/style.css">
</head>
<body>
<div class="site-wrapper">
    <header class="site-header">
        <div class="logo">Hostel</div>
        <nav class="nav-links">
            <a href="index.jsp">Dashboard</a>
            <a href="addRoom.jsp">Add Room</a>
            <a href="viewRooms.jsp">Rooms</a>
            <a href="allocateRoom.jsp">New Booking</a>
            <a href="viewBookings.jsp">Bookings</a>
        </nav>
    </header>

    <section class="main-card">
        <h1 class="page-title">Hostel Management Dashboard</h1>
        <p class="page-subtitle">
            Manage hostel rooms, allocate beds to students, and track booking history.
        </p>

        <div class="grid-actions">
            <div class="action-card">
                <div>
                    <div class="action-title">Add New Room</div>
                    <div class="action-desc">Register new rooms with type and pricing.</div>
                </div>
                <a class="link-btn" href="addRoom.jsp">Add Room</a>
            </div>
            <div class="action-card">
                <div>
                    <div class="action-title">View All Rooms</div>
                    <div class="action-desc">See all available rooms and their rates.</div>
                </div>
                <a class="link-btn" href="viewRooms.jsp">View Rooms</a>
            </div>
            <div class="action-card">
                <div>
                    <div class="action-title">Allocate Room</div>
                    <div class="action-desc">Book a room for a new student.</div>
                </div>
                <a class="link-btn" href="allocateRoom.jsp">New Booking</a>
            </div>
            <div class="action-card">
                <div>
                    <div class="action-title">Booking History</div>
                    <div class="action-desc">View list of all student allocations.</div>
                </div>
                <a class="link-btn" href="viewBookings.jsp">View Bookings</a>
            </div>
        </div>
    </section>

    <footer class="site-footer">
        © <%= java.time.Year.now() %> Vv's Hostel – Management System
    </footer>
</div>
</body>
</html>