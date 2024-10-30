<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="modeloDTO.Contrato" %>
<%@ include file="../header.jsp" %>

<div class="container mt-5">
    <h2 class="text-center" style="color: #4A148C;">Editar Contrato</h2>
    <%
        Contrato contrato = (Contrato) request.getAttribute("contrato");
    %>
    <form action="ContratoController?action=actualizar" method="post" class="shadow p-4 rounded bg-white">
        <input type="hidden" name="id" value="<%= contrato.getId() %>">
        <div class="form-group">
            <label>Código</label>
            <input type="text" name="codigo" class="form-control" value="<%= contrato.getCodigo() %>" required>
        </div>
        <div class="form-group">
            <label>Descripción</label>
            <input type="text" name="descripcion" class="form-control" value="<%= contrato.getDescripcion() %>" required>
        </div>
        <div class="form-group">
            <label>Tipo de Contrato</label>
            <select name="tipoContrato" class="form-control" required>
                <option value="Venta" <%= contrato.getTipoContrato().equals("Venta") ? "selected" : "" %>>Venta</option>
                <option value="Alquiler" <%= contrato.getTipoContrato().equals("Alquiler") ? "selected" : "" %>>Alquiler</option>
            </select>
        </div>
        <div class="form-group">
            <label>Valor</label>
            <input type="number" name="valor" class="form-control" value="<%= contrato.getValor() %>" step="0.01" required>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Actualizar</button>
    </form>
</div>

<%@ include file="../footer.jsp" %>
