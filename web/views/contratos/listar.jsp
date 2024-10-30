<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="modeloDTO.Contrato" %>
<%@ page import="java.util.List" %>
<%@ include file="../header.jsp" %>

<div class="container mt-5">
    <h2 class="text-center" style="color: #4A148C;">Lista de Contratos</h2>
    <a href="ContratoController?action=registrar" class="btn btn-primary mb-3">Nuevo Contrato</a>
    <div class="table-responsive">
        <table class="table table-bordered table-hover">
            <thead class="bg-dark text-white">
                <tr>
                    <th>ID</th>
                    <th>Código</th>
                    <th>Descripción</th>
                    <th>Tipo</th>
                    <th>Valor</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Contrato> listaContratos = (List<Contrato>) request.getAttribute("listaContratos");
                    if (listaContratos != null) {
                        for (Contrato contrato : listaContratos) {
                %>
                <tr>
                    <td><%= contrato.getId() %></td>
                    <td><%= contrato.getCodigo() %></td>
                    <td><%= contrato.getDescripcion() %></td>
                    <td><%= contrato.getTipoContrato() %></td>
                    <td><%= contrato.getValor() %></td>
                    <td>
                        <a href="ContratoController?action=editar&id=<%= contrato.getId() %>" class="btn btn-sm btn-warning">Editar</a>
                        <a href="ContratoController?action=eliminar&id=<%= contrato.getId() %>" class="btn btn-sm btn-danger">Eliminar</a>
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
