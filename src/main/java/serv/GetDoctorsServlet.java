package serv;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import data.AdminManager;
import data.Doctor;
import java.util.ArrayList;

@WebServlet(name = "GetDoctorsServlet", urlPatterns = {"/GetDoctorsServlet"})
public class GetDoctorsServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {        
        response.setContentType("application/json;charset=UTF-8");
        String speciality = request.getParameter("speciality");
        System.out.println("Speciality is" +speciality);
        ArrayList<Doctor> doctors = new AdminManager().getDoctors(speciality);

        PrintWriter out = response.getWriter();
        out.print("[");
        for (int i = 0; i < doctors.size(); i++) {
            Doctor d = doctors.get(i);
            out.print("{\"id\":\"" + d.getId() + "\",\"name\":\"" + d.getName() + "\"}");
            if (i < doctors.size() - 1) out.print(",");
        }
        out.print("]");
        out.flush();
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
