<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="modeloDTO.Propietario" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Lista de Propietarios</title>
</head>
<body>
<h2>Lista de Propietarios</h2>
<a href="PropietarioController?action=registrar">Nuevo Propietario</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Cédula</th>
        <th>Nombre Completo</th>
        <th>Dirección</th>
        <th>Correo</th>
        <th>Acciones</th>
    </tr>
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
            <a href="PropietarioController?action=editar&id=<%= propietario.getId() %>">Editar</a> |
            <a href="PropietarioController?action=eliminar&id=<%= propietario.getId() %>">Eliminar</a>
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>
