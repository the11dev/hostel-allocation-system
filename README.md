# Hostel Allocation System

Simple Hostel Management System using JSP, JDBC, and MySQL for my Java CA-2. Use this to manage rooms, allocate beds to students, and check booking records.

## Features
- **Dashboard:** Quick links to all pages.
- **Manage Rooms:** Add new rooms (AC/Non-AC), view list, or delete them.
- **Bookings:** Allocate rooms to students and check availability.
- **History:** See a list of all current allocations.

## Tech Stack
- **Frontend:** HTML, CSS (Custom Lavender Theme)
- **Backend:** Java JSP
- **Database:** MySQL
- **Server:** Apache Tomcat (v9)

## Setup Steps

1. **Database:**
   - Open MySQL Workbench.
   - Import/Run the `hosteldb.sql` file to create the `hosteldb` database and tables.

2. **Configuration:**
   - The project assumes your MySQL root password is `Vm@1105`.
   - If your password is different, find this line in the `.jsp` files (like `saveRoom.jsp`, `allocateRoom.jsp`, etc.) and update it:
     ```java
     DriverManager.getConnection("jdbc:mysql://localhost:3306/hosteldb", "root", "YOUR_PASSWORD");
     ```

3. **Run:**
   - Copy the `CA2` folder into your Tomcat `webapps` folder.
   - Start the Tomcat server (`startup.bat` / `startup.sh`).
   - Go to: `http://localhost:8081/CA2/` or `http://localhost:8080/CA2/`

## Project Structure
- `index.jsp` - Home/Dashboard
- `addRoom.jsp` & `saveRoom.jsp` - Add room logic
- `allocateRoom.jsp` & `saveBooking.jsp` - Booking logic
- `viewRooms.jsp` - Room list
- `viewBookings.jsp` - Booking list
- `assets/style.css` - Styles
