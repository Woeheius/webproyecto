<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="modeloDTO.Cliente" %>
<html>
<head>
    <title>Editar Cliente</title>
</head>
<body>
<h2>Editar Cliente</h2>
<%
    Cliente cliente = (Cliente) request.getAttribute("cliente");
%>
<form action="ClienteController?action=actualizar" method="post">
    <input type="hidden" name="id" value="<%= cliente.getId() %>">
    <label>Cédula:</label>
    <input type="text" name="cedula" value="<%= cliente.getCedula() %>"><br>
    <label>Nombre Completo:</label>
    <input type="text" name="nombreCompleto" value="<%= cliente.getNombreCompleto() %>"><br>
    <label>Dirección:</label>
    <input type="text" name="direccion" value="<%= cliente.getDireccion() %>"><br>
    <label>Correo:</label>
    <input type="email" name="correo" value="<%= cliente.getCorreo() %>"><br>
    <label>Teléfono:</label>
    <input type="text" name="numeroContacto1" value="<%= cliente.getNumeroContacto1() %>"><br>
    <input type="submit" value="Actualizar">
</form>
</body>
</html>
