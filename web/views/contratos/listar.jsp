<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="modeloDTO.Contrato" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Lista de Contratos</title>
</head>
<body>
<h2>Lista de Contratos</h2>
<a href="ContratoController?action=registrar">Nuevo Contrato</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Código</th>
        <th>Descripción</th>
        <th>Tipo</th>
        <th>Valor</th>
        <th>Acciones</th>
    </tr>
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
            <a href="ContratoController?action=editar&id=<%= contrato.getId() %>">Editar</a> |
            <a href="ContratoController?action=eliminar&id=<%= contrato.getId() %>">Eliminar</a>
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>
