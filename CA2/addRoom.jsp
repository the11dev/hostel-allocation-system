<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Room</title>
    <link rel="stylesheet" href="assets/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        .form-grid { display: flex; flex-direction: column; gap: 20px; margin-top: 10px; }
        .form-group label { font-weight: 600; }
        .form-group input, .form-group select { padding: 12px; border-radius: 8px; border: 1px solid #ccc; }
    </style>
</head>
<body>
<div class="site-wrapper">
    <header class="site-header">
        <div class="logo"><i class="fas fa-bed"></i>Hostel</div>
        <nav class="nav-links">
            <a href="index.jsp">Dashboard</a>
            <a href="viewRooms.jsp">Rooms</a>
        </nav>
    </header>

    <section class="main-card">
        <h1 class="page-title">Add New Room</h1>
        <form action="saveRoom.jsp" method="post" class="form-grid">
            <div class="form-group">
                <label>Room Number</label>
                <input type="text" name="room_number" placeholder="e.g. A-101" required>
            </div>
            <div class="form-group">
                <label>Room Type</label>
                <select name="room_type">
                    <option value="Single Non-AC">Single Non-AC</option>
                    <option value="Double Non-AC">Double Non-AC</option>
                    <option value="Single AC">Single AC</option>
                    <option value="Double AC">Double AC</option>
                </select>
            </div>
            <div class="form-group">
                <label>Monthly Rent (₹)</label>
                <input type="number" step="0.01" name="price" placeholder="Enter rent amount" required>
            </div>
            <div style="margin-top:10px;">
                <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save Room</button>
                <a href="index.jsp" class="btn btn-secondary">Back</a>
            </div>
        </form>
    </section>
</div>
</body>
</html>