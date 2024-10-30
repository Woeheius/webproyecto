<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../header.jsp" %>

<div class="container mt-5">
    <h2 class="text-center" style="color: #4A148C;">Registrar Contrato</h2>
    <form action="ContratoController?action=agregar" method="post" class="shadow p-4 rounded bg-white">
        <div class="form-group">
            <label>Código</label>
            <input type="text" name="codigo" class="form-control" placeholder="Ingrese el código" required>
        </div>
        <div class="form-group">
            <label>Descripción</label>
            <input type="text" name="descripcion" class="form-control" placeholder="Ingrese la descripción" required>
        </div>
        <div class="form-group">
            <label>Tipo de Contrato</label>
            <select name="tipoContrato" class="form-control" required>
                <option value="Venta">Venta</option>
                <option value="Alquiler">Alquiler</option>
            </select>
        </div>
        <div class="form-group">
            <label>Valor</label>
            <input type="number" name="valor" class="form-control" placeholder="Ingrese el valor" step="0.01" required>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Registrar</button>
    </form>
</div>

<%@ include file="../footer.jsp" %>
