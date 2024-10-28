<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="modeloDTO.Inmueble" %>
<html>
<head>
    <title>Editar Inmueble</title>
</head>
<body>
<h2>Editar Inmueble</h2>
<%
    Inmueble inmueble = (Inmueble) request.getAttribute("inmueble");
%>
<form action="InmuebleController?action=actualizar" method="post">
    <input type="hidden" name="id" value="<%= inmueble.getId() %>">
    <label>Código:</label>
    <input type="text" name="codigo" value="<%= inmueble.getCodigo() %>"><br>
    <label>Descripción:</label>
    <input type="text" name="descripcion" value="<%= inmueble.getDescripcion() %>"><br>
    <label>Tipo de Inmueble:</label>
    <select name="tipoInmueble">
        <option value="Casa" <%= inmueble.getTipoInmueble().equals("Casa") ? "selected" : "" %>>Casa</option>
        <option value="Apartamento" <%= inmueble.getTipoInmueble().equals("Apartamento") ? "selected" : "" %>>Apartamento</option>
        <option value="Finca" <%= inmueble.getTipoInmueble().equals("Finca") ? "selected" : "" %>>Finca</option>
        <option value="Local Comercial" <%= inmueble.getTipoInmueble().equals("Local Comercial") ? "selected" : "" %>>Local Comercial</option>
    </select><br>
    <label>Modalidad:</label>
    <select name="modalidad">
        <option value="Venta" <%= inmueble.getModalidad().equals("Venta") ? "selected" : "" %>>Venta</option>
        <option value="Alquiler" <%= inmueble.getModalidad().equals("Alquiler") ? "selected" : "" %>>Alquiler</option>
    </select><br>
    <label>Precio:</label>
    <input type="number" name="precio" step="0.01" value="<%= inmueble.getPrecio() %>"><br>
    <label>Estado:</label>
    <input type="text" name="estado" value="<%= inmueble.getEstado() %>"><br>
    <input type="submit" value="Actualizar">
</form>
</body>
</html>
