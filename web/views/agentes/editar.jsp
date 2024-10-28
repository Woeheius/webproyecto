<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="modeloDTO.Agente" %>
<html>
<head>
    <title>Editar Agente</title>
</head>
<body>
<h2>Editar Agente</h2>
<%
    Agente agente = (Agente) request.getAttribute("agente");
%>
<form action="AgenteController?action=actualizar" method="post">
    <input type="hidden" name="id" value="<%= agente.getId() %>">
    <label>Login:</label>
    <input type="text" name="login" value="<%= agente.getLogin() %>"><br>
    <label>Password:</label>
    <input type="password" name="password" value="<%= agente.getPassword() %>"><br>
    <label>Cédula:</label>
    <input type="text" name="cedula" value="<%= agente.getCedula() %>"><br>
    <label>Nombre Completo:</label>
    <input type="text" name="nombreCompleto" value="<%= agente.getNombreCompleto() %>"><br>
    <label>Correo:</label>
    <input type="email" name="correo" value="<%= agente.getCorreo() %>"><br>
    <label>Celular:</label>
    <input type="text" name="celular" value="<%= agente.getCelular() %>"><br>
    <input type="submit" value="Actualizar">
</form>
</body>
</html>
