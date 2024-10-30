<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="modeloDTO.Agente" %>
<%@ include file="../header.jsp" %>

<div class="container mt-5">
    <h2 class="text-center" style="color: #4A148C;">Editar Agente</h2>
    <%
        Agente agente = (Agente) request.getAttribute("agente");
    %>
    <form action="AgenteController?action=actualizar" method="post" class="shadow p-4 rounded bg-white">
        <input type="hidden" name="id" value="<%= agente.getId() %>">
        <div class="form-group">
            <label>Login</label>
            <input type="text" name="login" class="form-control" value="<%= agente.getLogin() %>" required>
        </div>
        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" class="form-control" value="<%= agente.getPassword() %>" required>
        </div>
        <div class="form-group">
            <label>Cédula</label>
            <input type="text" name="cedula" class="form-control" value="<%= agente.getCedula() %>" required>
        </div>
        <div class="form-group">
            <label>Nombre Completo</label>
            <input type="text" name="nombreCompleto" class="form-control" value="<%= agente.getNombreCompleto() %>" required>
        </div>
        <div class="form-group">
            <label>Correo</label>
            <input type="email" name="correo" class="form-control" value="<%= agente.getCorreo() %>" required>
        </div>
        <div class="form-group">
            <label>Celular</label>
            <input type="text" name="celular" class="form-control" value="<%= agente.getCelular() %>" required>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Actualizar</button>
    </form>
</div>

<%@ include file="../footer.jsp" %>

