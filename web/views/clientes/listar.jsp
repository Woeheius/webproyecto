<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="modeloDTO.Cliente" %>
<%@ page import="java.util.List" %>
<%@ include file="../header.jsp" %>

<div class="container mt-5">
    <h2 class="text-center" style="color: #4A148C;">Lista de Clientes</h2>
    <a href="ClienteController?action=registrar" class="btn btn-primary mb-3">Nuevo Cliente</a>
    <div class="table-responsive">
        <table class="table table-bordered table-hover">
            <thead class="bg-dark text-white">
                <tr>
                    <th>ID</th>
                    <th>Cédula</th>
                    <th>Nombre Completo</th>
                    <th>Dirección</th>
                    <th>Correo</th>
                    <th>Número de Contacto</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Cliente> listaClientes = (List<Cliente>) request.getAttribute("listaClientes");
                    if (listaClientes != null) {
                        for (Cliente cliente : listaClientes) { 
                %>
                <tr>
                    <td><%= cliente.getId() %></td>
                    <td><%= cliente.getCedula() %></td>
                    <td><%= cliente.getNombreCompleto() %></td>
                    <td><%= cliente.getDireccion() %></td>
                    <td><%= cliente.getCorreo() %></td>
                    <td><%= cliente.getNumeroContacto1() %></td>
                    <td>
                        <a href="ClienteController?action=editar&id=<%= cliente.getId() %>" class="btn btn-sm btn-warning">Editar</a>
                        <a href="ClienteController?action=eliminar&id=<%= cliente.getId() %>" class="btn btn-sm btn-danger">Eliminar</a>
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
