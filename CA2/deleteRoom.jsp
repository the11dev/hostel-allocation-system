<%@ page import="java.sql.*" %>
<%
    String id = request.getParameter("id");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hosteldb", "root", "Vm@1105");
        PreparedStatement ps = con.prepareStatement("DELETE FROM rooms WHERE id = ?");
        ps.setInt(1, Integer.parseInt(id));
        ps.executeUpdate();
        response.sendRedirect("viewRooms.jsp"); // Ensure this matches your view file name
    } catch (Exception e) {
        out.println("Error: " + e);
    }
%>