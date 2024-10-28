<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="modeloDTO.Propietario" %>
<html>
<head>
    <title>Editar Propietario</title>
</head>
<body>
<h2>Editar Propietario</h2>
<%
    Propietario propietario = (Propietario) request.getAttribute("propietario");
%>
<form action="PropietarioController?action=actualizar" method="post">
    <input type="hidden" name="id" value="<%= propietario.getId() %>">
    <label>Cédula:</label>
    <input type="text" name="cedula" value="<%= propietario.getCedula() %>"><br>
    <label>Nombre Completo:</label>
    <input type="text" name="nombreCompleto" value="<%= propietario.getNombreCompleto() %>"><br>
    <label>Dirección:</label>
    <input type="text" name="direccion" value="<%= propietario.getDireccion() %>"><br>
    <label>Correo:</label>
    <input type="email" name="correo" value="<%= propietario.getCorreo() %>"><br>
    <label>Teléfono:</label>
    <input type="text" name="numeroContacto1" value="<%= propietario.getNumeroContacto1() %>"><br>
    <input type="submit" value="Actualizar">
</form>
</body>
</html>
