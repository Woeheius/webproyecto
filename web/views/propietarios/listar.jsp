<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="modeloDTO.Propietario" %>
<%@ page import="java.util.List" %>
<%@ include file="../header.jsp" %>

<div class="container mt-5">
    <h2 class="text-center" style="color: #4A148C;">Lista de Propietarios</h2>
    <a href="PropietarioController?action=registrar" class="btn btn-primary mb-3">Nuevo Propietario</a>
    <div class="table-responsive">
        <table class="table table-bordered table-hover">
            <thead class="bg-dark text-white">
                <tr>
                    <th>ID</th>
                    <th>Cédula</th>
                    <th>Nombre Completo</th>
                    <th>Dirección</th>
                    <th>Correo</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Propietario> listaPropietarios = (List<Propietario>) request.getAttribute("listaPropietarios");
                    if (listaPropietarios != null) {
                        for (Propietario propietario : listaPropietarios) {
                %>
                <tr>
                    <td><%= propietario.getId() %></td>
                    <td><%= propietario.getCedula() %></td>
                    <td><%= propietario.getNombreCompleto() %></td>
                    <td><%= propietario.getDireccion() %></td>
                    <td><%= propietario.getCorreo() %></td>
                    <td>
                        <a href="PropietarioController?action=editar&id=<%= propietario.getId() %>" class="btn btn-sm btn-warning">Editar</a>
                        <a href="PropietarioController?action=eliminar&id=<%= propietario.getId() %>" class="btn btn-sm btn-danger">Eliminar</a>
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
