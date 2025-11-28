<%@ page import="java.sql.*" %>
<%
    String id = request.getParameter("id");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hosteldb", "root", "pass");
        PreparedStatement ps = con.prepareStatement("DELETE FROM bookings WHERE booking_id = ?");
        ps.setInt(1, Integer.parseInt(id));
        ps.executeUpdate();
        response.sendRedirect("viewBookings.jsp");
    } catch (Exception e) {
        out.println("Error: " + e);
    }
%>
