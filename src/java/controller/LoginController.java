// Archivo: src/java/controller/LoginController.java
package controller;

import modeloDAO.AgenteDAO;
import modeloDTO.Agente;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
    private AgenteDAO agenteDAO = new AgenteDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String login = request.getParameter("username");
        String password = request.getParameter("password");

        Agente agente = agenteDAO.validarCredenciales(login, password);

        if (agente != null) {
            HttpSession session = request.getSession();
            session.setAttribute("agente", agente);
            response.sendRedirect("home.jsp"); // Redirige a la página de inicio después de iniciar sesión
        } else {
            request.setAttribute("errorMessage", "Usuario o contraseña incorrectos");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
