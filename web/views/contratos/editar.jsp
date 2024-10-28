<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="modeloDTO.Contrato" %>
<html>
<head>
    <title>Editar Contrato</title>
</head>
<body>
<h2>Editar Contrato</h2>
<%
    Contrato contrato = (Contrato) request.getAttribute("contrato");
%>
<form action="ContratoController?action=actualizar" method="post">
    <input type="hidden" name="id" value="<%= contrato.getId() %>">
    <label>Código:</label>
    <input type="text" name="codigo" value="<%= contrato.getCodigo() %>"><br>
    <label>Descripción:</label>
    <input type="text" name="descripcion" value="<%= contrato.getDescripcion() %>"><br>
    <label>Tipo de Contrato:</label>
    <select name="tipoContrato">
        <option value="Venta" <%= contrato.getTipoContrato().equals("Venta") ? "selected" : "" %>>Venta</option>
        <option value="Alquiler" <%= contrato.getTipoContrato().equals("Alquiler") ? "selected" : "" %>>Alquiler</option>
    </select><br>
    <label>Valor:</label>
    <input type="number" name="valor" step="0.01" value="<%= contrato.getValor() %>"><br>
    <input type="submit" value="Actualizar">
</form>
</body>
</html>
