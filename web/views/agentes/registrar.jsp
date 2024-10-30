<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../header.jsp" %>

<div class="container mt-5">
    <h2 class="text-center" style="color: #4A148C;">Registrar Agente</h2>
    <form action="AgenteController?action=agregar" method="post" class="shadow p-4 rounded bg-white">
        <div class="form-group">
            <label>Login</label>
            <input type="text" name="login" class="form-control" placeholder="Ingrese el usuario" required>
        </div>
        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" class="form-control" placeholder="Ingrese la contraseña" required>
        </div>
        <div class="form-group">
            <label>Cédula</label>
            <input type="text" name="cedula" class="form-control" placeholder="Ingrese la cédula" required>
        </div>
        <div class="form-group">
            <label>Nombre Completo</label>
            <input type="text" name="nombreCompleto" class="form-control" placeholder="Ingrese el nombre completo" required>
        </div>
        <div class="form-group">
            <label>Correo</label>
            <input type="email" name="correo" class="form-control" placeholder="Ingrese el correo" required>
        </div>
        <div class="form-group">
            <label>Celular</label>
            <input type="text" name="celular" class="form-control" placeholder="Ingrese el número de celular" required>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Registrar</button>
    </form>
</div>

<%@ include file="../footer.jsp" %>
