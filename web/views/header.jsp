<!-- File: web/views/header.jsp -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Meta y básicos -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inmobiliaria S.A.</title>

    <!-- CSS de Bootstrap y plantilla -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body class="main-layout">
    <!-- Sidebar -->
    <div class="sidebar">
        <nav id="sidebar">
            <div id="dismiss">
                <i class="fa fa-arrow-left"></i>
            </div>
            <ul class="list-unstyled components">
                <li><a href="${pageContext.request.contextPath}/AgenteController?action=listar">Agentes</a></li>
                <li><a href="${pageContext.request.contextPath}/ClienteController?action=listar">Clientes</a></li>
                <li><a href="${pageContext.request.contextPath}/InmuebleController?action=listar">Inmuebles</a></li>
                <li><a href="${pageContext.request.contextPath}/ContratoController?action=listar">Contratos</a></li>
            </ul>
        </nav>
    </div>

    <!-- Encabezado -->
    <div id="content">
        <header>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">
                        <div class="full">
                            <a class="logo" href="index.jsp"><img src="${pageContext.request.contextPath}/images/logo.png" alt="Inmobiliaria S.A."></a>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="full">
                            <div class="right_header_info">
                                <ul>
                                    <li><img src="${pageContext.request.contextPath}/images/phone_icon.png" alt="#"><a href="#">987-654-3210</a></li>
                                    <li><img src="${pageContext.request.contextPath}/images/mail_icon.png" alt="#"><a href="#">info@inmobiliaria.com</a></li>
                                    <li>
                                        <button type="button" id="sidebarCollapse">
                                            <a href="#">MENU</a>
                                        </button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Fin del encabezado -->

