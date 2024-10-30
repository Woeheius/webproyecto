<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../header.jsp" %>

<div class="container mt-5">
    <h2 class="text-center" style="color: #4A148C;">Registrar Inmueble</h2>
    <form action="InmuebleController?action=agregar" method="post" class="shadow p-4 rounded bg-white">
        <div class="form-group">
            <label>Código</label>
            <input type="text" name="codigo" class="form-control" placeholder="Ingrese el código" required>
        </div>
        <div class="form-group">
            <label>Descripción</label>
            <input type="text" name="descripcion" class="form-control" placeholder="Ingrese la descripción" required>
        </div>
        <div class="form-group">
            <label>Tipo de Inmueble</label>
            <select name="tipoInmueble" class="form-control" required>
                <option value="Casa">Casa</option>
                <option value="Apartamento">Apartamento</option>
                <option value="Finca">Finca</option>
                <option value="Local Comercial">Local Comercial</option>
            </select>
        </div>
        <div class="form-group">
            <label>Modalidad</label>
            <select name="modalidad" class="form-control" required>
                <option value="Venta">Venta</option>
                <option value="Alquiler">Alquiler</option>
            </select>
        </div>
        <div class="form-group">
            <label>Precio</label>
            <input type="number" name="precio" class="form-control" placeholder="Ingrese el precio" step="0.01" required>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Registrar</button>
    </form>
</div>

<%@ include file="../footer.jsp" %>
