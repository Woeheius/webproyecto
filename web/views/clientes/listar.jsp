<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="modeloDTO.Cliente" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Lista de Clientes</title>
</head>
<body>
<h2>Lista de Clientes</h2>
<a href="ClienteController?action=registrar">Nuevo Cliente</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Cédula</th>
        <th>Nombre Completo</th>
        <th>Dirección</th>
        <th>Correo</th>
        <th>Número de Contacto</th>
        <th>Acciones</th>
    </tr>
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
            <a href="ClienteController?action=editar&id=<%= cliente.getId() %>">Editar</a> |
            <a href="ClienteController?action=eliminar&id=<%= cliente.getId() %>">Eliminar</a>
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>
