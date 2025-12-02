<jsp:useBean id="obj" class="data.AdminManager"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%
    // Fetch appointments from your database
    ArrayList<String> al = obj.viewAppointments();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Appointment Manager</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            margin: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 12px 15px;
            border-bottom: 1px solid #ddd;
            text-align: center;
        }

        th {
            background-color: #2196F3;
            color: white;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:nth-child(odd) {
            background-color: #eef7ff;
        }

        tr:hover {
            background-color: #dceeff;
            transition: 0.3s;
        }

        a {
            color: #ff4d4d;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            color: #ff0000;
        }
    </style>
</head>
<body>
    <h1>Appointment Manager</h1>
    <table>
        <tr>
            <th>Appointment ID</th>
            <th>Speciality</th>
            <th>Doctor</th>
            <th>Patient Name</th>
            <th>Date</th>
            <th>Date</th>
            <th>Time</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Action</th>
        </tr>
        <%
            for (int i = 0; i < al.size(); i++) {
        %>
        <tr>
            <td><%= al.get(i) %></td>
            <td><%= al.get(i + 1) %></td>
            <td><%= al.get(i + 2) %></td>
            <td><%= al.get(i + 3) %></td>
            <td><%= al.get(i + 4) %></td>
            <td><%= al.get(i + 5) %></td>
            <td><%= al.get(i + 6) %></td>
            <td></td>
            <td>
    <button class="delete-btn" onclick="deleteAppointment('<%= al.get(i) %>', this)">
        Delete
    </button>
</td>
        </tr>
        <%
                i = i + 7;
            }
        %>
    </table>
    <script>
function deleteAppointment(appId, btnRef) {

    if (!confirm("Are you sure you want to delete this appointment?")) {
        return;
    }

    var xhr = new XMLHttpRequest();
    xhr.open("POST", "hsDeleteAppointmentAJAX.jsp", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {

            if (xhr.responseText.trim() === "success") {
                // Remove table row visually
                btnRef.closest("tr").remove();
            } else {
                alert("Failed to delete appointment.");
            }
        }
    };

    xhr.send("app_id=" + encodeURIComponent(appId));
}
</script>
</body>
</html>
