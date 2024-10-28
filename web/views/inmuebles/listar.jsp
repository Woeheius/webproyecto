<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="modeloDTO.Inmueble" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Lista de Inmuebles</title>
</head>
<body>
<h2>Lista de Inmuebles</h2>
<a href="InmuebleController?action=registrar">Nuevo Inmueble</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Código</th>
        <th>Descripción</th>
        <th>Tipo de Inmueble</th>
        <th>Modalidad</th>
        <th>Precio</th>
        <th>Estado</th>
        <th>Acciones</th>
    </tr>
    <%
        List<Inmueble> listaInmuebles = (List<Inmueble>) request.getAttribute("listaInmuebles");
        if (listaInmuebles != null) {
            for (Inmueble inmueble : listaInmuebles) {
    %>
    <tr>
        <td><%= inmueble.getId() %></td>
        <td><%= inmueble.getCodigo() %></td>
        <td><%= inmueble.getDescripcion() %></td>
        <td><%= inmueble.getTipoInmueble() %></td>
        <td><%= inmueble.getModalidad() %></td>
        <td><%= inmueble.getPrecio() %></td>
        <td><%= inmueble.getEstado() %></td>
        <td>
            <a href="InmuebleController?action=editar&id=<%= inmueble.getId() %>">Editar</a> |
            <a href="InmuebleController?action=eliminar&id=<%= inmueble.getId() %>">Eliminar</a>
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>
