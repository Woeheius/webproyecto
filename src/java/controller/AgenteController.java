package controller;

import modeloDTO.Agente;
import modeloDAO.AgenteDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AgenteController")
public class AgenteController extends HttpServlet {
    private AgenteDAO agenteDAO = new AgenteDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "listar":
                request.setAttribute("listaAgentes", agenteDAO.listar());
                request.getRequestDispatcher("views/agentes/listar.jsp").forward(request, response);
                break;
            case "registrar":
                request.getRequestDispatcher("views/agentes/registrar.jsp").forward(request, response);
                break;
            case "editar":
                int id = Integer.parseInt(request.getParameter("id"));
                request.setAttribute("agente", agenteDAO.listarPorId(id));
                request.getRequestDispatcher("views/agentes/editar.jsp").forward(request, response);
                break;
            case "eliminar":
                int idEliminar = Integer.parseInt(request.getParameter("id"));
                agenteDAO.eliminar(idEliminar);
                response.sendRedirect("AgenteController?action=listar");
                break;
            default:
                response.sendRedirect("AgenteController?action=listar");
                break;
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        Agente agente = new Agente();
        agente.setLogin(request.getParameter("login"));
        agente.setPassword(request.getParameter("password"));
        agente.setCedula(request.getParameter("cedula"));
        agente.setNombreCompleto(request.getParameter("nombreCompleto"));
        agente.setDireccion(request.getParameter("direccion"));
        agente.setFechaNacimiento(request.getParameter("fechaNacimiento"));
        agente.setFechaExpedicion(request.getParameter("fechaExpedicion"));
        agente.setCorreo(request.getParameter("correo"));
        agente.setCelular(request.getParameter("celular"));

        if ("agregar".equals(action)) {
            agenteDAO.agregar(agente);
        } else if ("actualizar".equals(action)) {
            agente.setId(Integer.parseInt(request.getParameter("id")));
            agenteDAO.actualizar(agente);
        }

        response.sendRedirect("AgenteController?action=listar");
    }
}
