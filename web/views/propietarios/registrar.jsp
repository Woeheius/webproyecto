<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registrar Propietario</title>
</head>
<body>
<h2>Registrar Propietario</h2>
<form action="PropietarioController?action=agregar" method="post">
    <label>Cédula:</label>
    <input type="text" name="cedula"><br>
    <label>Nombre Completo:</label>
    <input type="text" name="nombreCompleto"><br>
    <label>Dirección:</label>
    <input type="text" name="direccion"><br>
    <label>Correo:</label>
    <input type="email" name="correo"><br>
    <label>Teléfono:</label>
    <input type="text" name="numeroContacto1"><br>
    <input type="submit" value="Registrar">
</form>
</body>
</html>
