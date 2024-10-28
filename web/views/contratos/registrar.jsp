<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registrar Contrato</title>
</head>
<body>
<h2>Registrar Contrato</h2>
<form action="ContratoController?action=agregar" method="post">
    <label>Código:</label>
    <input type="text" name="codigo"><br>
    <label>Descripción:</label>
    <input type="text" name="descripcion"><br>
    <label>Tipo de Contrato:</label>
    <select name="tipoContrato">
        <option value="Venta">Venta</option>
        <option value="Alquiler">Alquiler</option>
    </select><br>
    <label>Valor:</label>
    <input type="number" name="valor" step="0.01"><br>
    <input type="submit" value="Registrar">
</form>
</body>
</html>
