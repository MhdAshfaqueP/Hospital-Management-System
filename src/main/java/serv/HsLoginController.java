package serv;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "HsLoginController", urlPatterns = {"/HsLoginController"})
public class HsLoginController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String name  = request.getParameter("names");
        String email = request.getParameter("email");
        String phone = request.getParameter("number");

        HttpSession session = request.getSession();
        session.setAttribute("p_name", name);
        session.setAttribute("p_email", email);
        session.setAttribute("p_phone", phone);

        response.sendRedirect("hsIndexPage.jsp");
    }
}
