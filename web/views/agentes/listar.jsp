<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="modeloDTO.Agente" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Lista de Agentes</title>
</head>
<body>
<h2>Lista de Agentes</h2>
<a href="AgenteController?action=registrar">Nuevo Agente</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Login</th>
        <th>Cédula</th>
        <th>Nombre Completo</th>
        <th>Correo</th>
        <th>Celular</th>
        <th>Acciones</th>
    </tr>
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
            <a href="AgenteController?action=editar&id=<%= agente.getId() %>">Editar</a> |
            <a href="AgenteController?action=eliminar&id=<%= agente.getId() %>">Eliminar</a>
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>
