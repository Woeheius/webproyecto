<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="modeloDTO.Cliente" %>
<%@ include file="../header.jsp" %>

<div class="container mt-5">
    <h2 class="text-center" style="color: #4A148C;">Editar Cliente</h2>
    <%
        Cliente cliente = (Cliente) request.getAttribute("cliente");
    %>
    <form action="ClienteController?action=actualizar" method="post" class="shadow p-4 rounded bg-white">
        <input type="hidden" name="id" value="<%= cliente.getId() %>">
        <div class="form-group">
            <label>Cédula</label>
            <input type="text" name="cedula" class="form-control" value="<%= cliente.getCedula() %>" required>
        </div>
        <div class="form-group">
            <label>Nombre Completo</label>
            <input type="text" name="nombreCompleto" class="form-control" value="<%= cliente.getNombreCompleto() %>" required>
        </div>
        <div class="form-group">
            <label>Dirección</label>
            <input type="text" name="direccion" class="form-control" value="<%= cliente.getDireccion() %>" required>
        </div>
        <div class="form-group">
            <label>Correo</label>
            <input type="email" name="correo" class="form-control" value="<%= cliente.getCorreo() %>" required>
        </div>
        <div class="form-group">
            <label>Teléfono</label>
            <input type="text" name="numeroContacto1" class="form-control" value="<%= cliente.getNumeroContacto1() %>" required>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Actualizar</button>
    </form>
</div>

<%@ include file="../footer.jsp" %>
