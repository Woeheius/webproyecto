<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="modeloDTO.Inmueble" %>
<%@ include file="../header.jsp" %>

<div class="container mt-5">
    <h2 class="text-center" style="color: #4A148C;">Editar Inmueble</h2>
    <%
        Inmueble inmueble = (Inmueble) request.getAttribute("inmueble");
    %>
    <form action="InmuebleController?action=actualizar" method="post" class="shadow p-4 rounded bg-white">
        <input type="hidden" name="id" value="<%= inmueble.getId() %>">
        <div class="form-group">
            <label>Código</label>
            <input type="text" name="codigo" class="form-control" value="<%= inmueble.getCodigo() %>" required>
        </div>
        <div class="form-group">
            <label>Descripción</label>
            <input type="text" name="descripcion" class="form-control" value="<%= inmueble.getDescripcion() %>" required>
        </div>
        <div class="form-group">
            <label>Tipo de Inmueble</label>
            <select name="tipoInmueble" class="form-control" required>
                <option value="Casa" <%= inmueble.getTipoInmueble().equals("Casa") ? "selected" : "" %>>Casa</option>
                <option value="Apartamento" <%= inmueble.getTipoInmueble().equals("Apartamento") ? "selected" : "" %>>Apartamento</option>
                <option value="Finca" <%= inmueble.getTipoInmueble().equals("Finca") ? "selected" : "" %>>Finca</option>
                <option value="Local Comercial" <%= inmueble.getTipoInmueble().equals("Local Comercial") ? "selected" : "" %>>Local Comercial</option>
            </select>
        </div>
        <div class="form-group">
            <label>Modalidad</label>
            <select name="modalidad" class="form-control" required>
                <option value="Venta" <%= inmueble.getModalidad().equals("Venta") ? "selected" : "" %>>Venta</option>
                <option value="Alquiler" <%= inmueble.getModalidad().equals("Alquiler") ? "selected" : "" %>>Alquiler</option>
            </select>
        </div>
        <div class="form-group">
            <label>Precio</label>
            <input type="number" name="precio" class="form-control" value="<%= inmueble.getPrecio() %>" step="0.01" required>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Actualizar</button>
    </form>
</div>

<%@ include file="../footer.jsp" %>
