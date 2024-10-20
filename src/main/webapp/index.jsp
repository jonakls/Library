<%@ page import="top.jonakls.library.controller.BookPersistenceController" %>
<%@ page import="top.jonakls.library.entity.object.BookEntity" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <title>Inicio | Biblioteca</title>
    <link href="./assets/images/logos/favicon.png" rel="shortcut icon" type="image/png"/>
    <link href="./assets/css/styles.min.css" rel="stylesheet"/>
    <%@include file="util/extra-libs.jsp" %>
</head>

<body>
<%@include file="util/session-util.jsp" %>

<%
    final String errorParam = request.getParameter("error");
    
    if (errorParam != null) {
        String errorMessage = session.getAttribute("errorMessage") != null ? (String) session.getAttribute("errorMessage") : "Error desconocido";
        session.removeAttribute("errorMessage");
        
        out.println("<script>");
        out.println("showError('" + errorMessage + "');");
        out.println("</script>");
    }
    
    final BookPersistenceController bookPersistenceController = new BookPersistenceController();
    final List<BookEntity> books = bookPersistenceController.findRecentlyBooks();
%>
<!--  Body Wrapper -->
<div class="page-wrapper" data-header-position="fixed" data-layout="vertical" data-navbarbg="skin6"
     data-sidebar-position="fixed" data-sidebartype="full" id="main-wrapper">
    <!-- Sidebar Start -->
    <jsp:include page="layout/sidebar-layout.jsp"/>
    <!--  Sidebar End -->
    <!--  Main wrapper -->
    <div class="body-wrapper">
        <!--  Header Start -->
        <jsp:include page="layout/header-layout.jsp"/>
        <!--  Header End -->
        <div class="container-fluid">
            <!--  Row 1 -->
            <div class="row">
                <div class="col-lg-8 d-flex align-items-center">
                    <div class="card w-100">
                        <div class="card-body p-4">
                            <h5 class="card-title fw-semibold mb-4">Libros recientes</h5>
                            <div class="table-responsive">
                                <table class="table text-nowrap mb-0 align-middle">
                                    <thead class="text-dark fs-4">
                                    <tr>
                                        <th class="border-bottom-0">
                                            <h6 class="fw-semibold mb-0">#</h6>
                                        </th>
                                        <th class="border-bottom-0">
                                            <h6 class="fw-semibold mb-0">Titulo y author</h6>
                                        </th>
                                        <th class="border-bottom-0">
                                            <h6 class="fw-semibold mb-0">Genero</h6>
                                        </th>
                                        <th class="border-bottom-0">
                                            <h6 class="fw-semibold mb-0">Disponibilidad</h6>
                                        </th>
                                        <th class="border-bottom-0">
                                            <h6 class="fw-semibold mb-0">Año</h6>
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <% for (final BookEntity recentlyBook : books) { %>
                                    <tr>
                                        <td class="border-bottom-0">
                                            <h6 class="fw-semibold mb-0"><%=recentlyBook.getId()%></h6>
                                        </td>
                                        <td class="border-bottom-0">
                                            <h6 class="fw-semibold mb-1"><%=recentlyBook.getTitle()%></h6>
                                            <span class="fw-normal"><%=recentlyBook.getAuthor()%></span>
                                        </td>
                                        <td class="border-bottom-0">
                                            <p class="mb-0 fw-normal"><%=recentlyBook.getGenre()%></p>
                                        </td>
                                        <td class="border-bottom-0">
                                            <div class="d-flex align-items-center gap-2">
                                                <span class="badge bg-primary rounded-3 fw-semibold"><%=recentlyBook.getAvailability()%></span>
                                            </div>
                                        </td>
                                        <td class="border-bottom-0">
                                            <h6 class="fw-semibold mb-0 fs-4"><%=recentlyBook.getYear()%></h6>
                                        </td>
                                    <% } %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="py-6 px-6 text-center">
                <p class="mb-0 fs-4">Diseñado y desarrollado por: <a class="pe-1 text-primary text-decoration-underline"
                                                                     href="https://adminmart.com/"
                                                                     target="_blank">AdminMart.com</a>
                    Distribuido por: <a href="https://themewagon.com">ThemeWagon</a></p>
            </div>
        </div>
    </div>
</div>
<script src="./assets/libs/jquery/dist/jquery.min.js"></script>
<script src="./assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="./assets/js/sidebarmenu.js"></script>
<script src="./assets/js/app.min.js"></script>
<script src="./assets/libs/apexcharts/dist/apexcharts.min.js"></script>
<script src="./assets/libs/simplebar/dist/simplebar.js"></script>
<script src="./assets/js/dashboard.js"></script>
</body>

<html>