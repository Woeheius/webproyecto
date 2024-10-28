<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registrar Agente</title>
</head>
<body>
<h2>Registrar Agente</h2>
<form action="AgenteController?action=agregar" method="post">
    <label>Login:</label>
    <input type="text" name="login"><br>
    <label>Password:</label>
    <input type="password" name="password"><br>
    <label>Cédula:</label>
    <input type="text" name="cedula"><br>
    <label>Nombre Completo:</label>
    <input type="text" name="nombreCompleto"><br>
    <label>Correo:</label>
    <input type="email" name="correo"><br>
    <label>Celular:</label>
    <input type="text" name="celular"><br>
    <input type="submit" value="Registrar">
</form>
</body>
</html>
