package data;

import java.sql.*;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class AdminManager {

    Connection con;
    ResultSet rs;
    PreparedStatement ps;

    private void makeConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/hospital?useSSL=false";
            String user = "root";
            String pass = "8088";
            con = DriverManager.getConnection(url, user, pass);
            System.out.println("Database connected");
        } catch (Exception e) {
            System.out.println("Database connection error: " + e);
        }
    }

    public int Login(String admin_id, String password) {
        makeConnection();
        int f = 0;

        try {
            String sql = "SELECT * FROM admin_login WHERE admin_id = ? AND password = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, admin_id);
            ps.setString(2, password);

            rs = ps.executeQuery();
            if (rs.next()) {
                f = 1;
            }

        } catch (Exception e) {
            System.out.println("Error while checking login: " + e);
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception ex) {
                System.out.println("Closing connection error: " + ex);
            }
        }
        return f;
    }

public ArrayList<Doctor> getDoctors(String departmentName) {
    ArrayList<Doctor> doctors = new ArrayList<>();
    try {
        makeConnection();
        ps = con.prepareStatement(
            "SELECT doctor_id, doctor_name FROM doctors_list WHERE department_name = ?"
        );
        ps.setString(1, departmentName);
        rs = ps.executeQuery();
        while (rs.next()) {
            doctors.add(new Doctor(rs.getString("doctor_id"), rs.getString("doctor_name")));
        }
        System.out.println("List - "+doctors);
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    return doctors;
}



    public int SetAppointment(String depId, String docId, String name, String phone, String date, String time, String email) {
    int flag = 0;
    try {
        makeConnection();
        ps = con.prepareStatement(
            "INSERT INTO appointment_table (department_id, doctor_id, name, phone, date, time, email) VALUES (?, ?, ?, ?, ?, ?, ?)"
        );
        ps.setString(1, depId);
        ps.setString(2, docId);
        ps.setString(3, name);
        ps.setString(4, phone);
        ps.setString(5, date);
        ps.setString(6, time);
        ps.setString(7, email);
        
        ps.executeUpdate();
        flag = 1;
    } catch (SQLException ex) {
        System.out.println("Error inserting appointment: " + ex);
    } finally {
        try {
            if (ps != null) ps.close();
            if (con != null) con.close();
        } catch (SQLException ex) {
            System.out.println("Error closing DB: " + ex);
        }
    }
    return flag;
}
    public ArrayList<String> viewAppointments() {
    ArrayList<String> list = new ArrayList<>();
    try {
        makeConnection();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM appointment_table");
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            list.add(rs.getString("app_id"));
            list.add(rs.getString("department_id"));
            list.add(rs.getString("doctor_id"));
            list.add(rs.getString("name"));
            list.add(rs.getString("date"));
            list.add(rs.getString("time"));
            list.add(rs.getString("phone"));
            list.add(rs.getString("email"));
        }
        rs.close();
        ps.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    return list;
}
    public int deleteQuery(String app_id) {
        String sql = "DELETE FROM appointment_table WHERE app_id = ?";
        int flag = 0;

        try {
            makeConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, app_id);
            ps.executeUpdate();
            con.close();
            ps.close();
            flag = 1;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

}
