<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="modeloDTO.Inmueble" %>
<%@ page import="java.util.List" %>
<%@ include file="../header.jsp" %>

<div class="container mt-5">
    <h2 class="text-center" style="color: #4A148C;">Lista de Inmuebles</h2>
    <a href="InmuebleController?action=registrar" class="btn btn-primary mb-3">Nuevo Inmueble</a>
    <div class="table-responsive">
        <table class="table table-bordered table-hover">
            <thead class="bg-dark text-white">
                <tr>
                    <th>ID</th>
                    <th>Código</th>
                    <th>Descripción</th>
                    <th>Tipo</th>
                    <th>Modalidad</th>
                    <th>Precio</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Inmueble> listaInmuebles = (List<Inmueble>) request.getAttribute("listaInmuebles");
                    if (listaInmuebles != null) {
                        for (Inmueble inmueble : listaInmuebles) {
                %>
                <tr>
                    <td><%= inmueble.getId() %></td>
                    <td><%= inmueble.getCodigo() %></td>
                    <td><%= inmueble.getDescripcion() %></td>
                    <td><%= inmueble.getTipoInmueble() %></td>
                    <td><%= inmueble.getModalidad() %></td>
                    <td><%= inmueble.getPrecio() %></td>
                    <td>
                        <a href="InmuebleController?action=editar&id=<%= inmueble.getId() %>" class="btn btn-sm btn-warning">Editar</a>
                        <a href="InmuebleController?action=eliminar&id=<%= inmueble.getId() %>" class="btn btn-sm btn-danger">Eliminar</a>
                    </td>
                </tr>
                <%
                        }
                    }
                %>
            </tbody>
        </table>
    </div>
</div>

<%@ include file="../footer.jsp" %>
