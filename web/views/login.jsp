<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<div class="container" style="margin-top: 100px; max-width: 400px;">
    <div class="card shadow-sm">
        <div class="card-body">
            <h3 class="text-center" style="color: #4A148C;">Inicio de Sesión</h3>
            <form action="${pageContext.request.contextPath}/LoginController" method="post">
                <div class="form-group">
                    <label for="username">Usuario</label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="Ingrese su usuario" required>
                </div>
                <div class="form-group">
                    <label for="password">Contraseña</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Ingrese su contraseña" required>
                </div>
                <button type="submit" class="btn btn-block mt-3" style="background-color: #4A148C; color: white;">Iniciar Sesión</button>
                <% if (request.getAttribute("errorMessage") != null) { %>
                    <div class="alert alert-danger mt-2"><%= request.getAttribute("errorMessage") %></div>
                <% } %>
            </form>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>
