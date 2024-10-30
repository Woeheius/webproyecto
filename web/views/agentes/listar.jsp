<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="modeloDTO.Agente" %>
<%@ page import="java.util.List" %>
<%@ include file="../header.jsp" %>

<div class="container mt-5">
    <h2 class="text-center" style="color: #4A148C;">Lista de Agentes</h2>
    <a href="AgenteController?action=registrar" class="btn btn-primary mb-3">Nuevo Agente</a>
    <div class="table-responsive">
        <table class="table table-bordered table-hover">
            <thead class="bg-dark text-white">
                <tr>
                    <th>ID</th>
                    <th>Login</th>
                    <th>Cédula</th>
                    <th>Nombre Completo</th>
                    <th>Correo</th>
                    <th>Celular</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Agente> listaAgentes = (List<Agente>) request.getAttribute("listaAgentes");
                    if (listaAgentes != null) {
                        for (Agente agente : listaAgentes) { 
                %>
                <tr>
                    <td><%= agente.getId() %></td>
                    <td><%= agente.getLogin() %></td>
                    <td><%= agente.getCedula() %></td>
                    <td><%= agente.getNombreCompleto() %></td>
                    <td><%= agente.getCorreo() %></td>
                    <td><%= agente.getCelular() %></td>
                    <td>
                        <a href="AgenteController?action=editar&id=<%= agente.getId() %>" class="btn btn-sm btn-warning">Editar</a>
                        <a href="AgenteController?action=eliminar&id=<%= agente.getId() %>" class="btn btn-sm btn-danger">Eliminar</a>
                    </td>
                </tr>
                <% 
                        }
                    } 
                %>
            </tbody>
        </table>
    </div>
</div>

<%@ include file="../footer.jsp" %>
