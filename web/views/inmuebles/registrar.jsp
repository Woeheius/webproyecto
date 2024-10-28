<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registrar Inmueble</title>
</head>
<body>
<h2>Registrar Inmueble</h2>
<form action="InmuebleController?action=agregar" method="post">
    <label>Código:</label>
    <input type="text" name="codigo"><br>
    <label>Descripción:</label>
    <input type="text" name="descripcion"><br>
    <label>Tipo de Inmueble:</label>
    <select name="tipoInmueble">
        <option value="Casa">Casa</option>
        <option value="Apartamento">Apartamento</option>
        <option value="Finca">Finca</option>
        <option value="Local Comercial">Local Comercial</option>
    </select><br>
    <label>Modalidad:</label>
    <select name="modalidad">
        <option value="Venta">Venta</option>
        <option value="Alquiler">Alquiler</option>
    </select><br>
    <label>Precio:</label>
    <input type="number" name="precio" step="0.01"><br>
    <label>Estado:</label>
    <input type="text" name="estado"><br>
    <input type="submit" value="Registrar">
</form>
</body>
</html>
