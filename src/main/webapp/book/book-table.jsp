<%@ page import="top.jonakls.library.controller.BookPersistenceController" %>
<%@ page import="java.util.List" %>
<%@ page import="top.jonakls.library.entity.object.BookEntity" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="es">

<head>
    <title>Biblioteca | Lista de libros</title>
    <link href="../assets/images/logos/favicon.png" rel="shortcut icon" type="image/png"/>
    <link href="../assets/css/styles.min.css" rel="stylesheet"/>
</head>

<body>
<%@include file="../util/extra-libs.jsp" %>
<%@include file="../util/session-util.jsp" %>
<%
    final String errorParam = request.getParameter("error");
    
    if (errorParam != null) {
        String errorMessage = session.getAttribute("errorMessage") != null ? (String) session.getAttribute("errorMessage") : "Error desconocido";
        session.removeAttribute("errorMessage");
        
        out.println("<script>");
        out.println("showError('" + errorMessage + "');");
        out.println("</script>");
    }
    
    
    final String successParam = request.getParameter("success");
    
    if (successParam != null) {
        String successMessage = session.getAttribute("successMessage") != null ? (String) session.getAttribute("successMessage") : "Exito desconocido";
        session.removeAttribute("successMessage");
        
        out.println("<script>");
        out.println("showSuccess('" + successMessage + "');");
        out.println("</script>");
    }
    
    final BookPersistenceController bookPersistenceController = new BookPersistenceController();
    final List<BookEntity> books = bookPersistenceController.findAllBooks();
    final int userRole = (int) session.getAttribute("userRole");
%>

<!--  Body Wrapper -->
<div class="page-wrapper" data-header-position="fixed" data-layout="vertical" data-navbarbg="skin6"
     data-sidebar-position="fixed"
     data-sidebartype="full" id="main-wrapper">
    <!-- Sidebar Component -->
    <jsp:include page="../layout/sidebar-layout.jsp"/>
    
    <!--  Main wrapper -->
    <div class="body-wrapper">
        <!--  Header Component -->
        <jsp:include page="../layout/header-layout.jsp"/>
        
        <div class="container-fluid">
            <div class="card">
                <div class="card-body">
                    
                    <h5 class="card-title fw-semibold mb-4">Libros</h5>
                    <p class="mb-0">Libros disponibles o ocupados</p>
                    
                    <table class="table table-striped" id="template-table">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Titulo</th>
                            <th scope="col">Autor</th>
                            <th scope="col">Genero</th>
                            <th scope="col">Año</th>
                            <th scope="col">Disponibilidad</th>
                            <th scope="col">Acciones</th>
                        </tr>
                        </thead>
                        <tbody>
                        <% for (BookEntity book : books) { %>
                        <tr>
                            <th scope="row"><%= book.getId() %>
                            </th>
                            <td><%= book.getTitle() %>
                            </td>
                            <td><%= book.getAuthor() %>
                            </td>
                            <td><%= book.getGenre() %>
                            </td>
                            <td><%= book.getYear() %>
                            </td>
                            <td><%= book.getAvailability() %>
                            </td>
                            <td>
                                <%
                                    switch (userRole) {
                                        case 3:
                                %>
                                <a href="book-edit.jsp?id=<%= book.getId() %>" class="btn btn-primary">Reservar</a>
                                <%
                                        break;
                                    case 2:
                                %>
                                <a href="book-edit.jsp?id=<%= book.getId() %>" class="btn btn-primary">Reservar</a>
                                <a href="book-edit.jsp?id=<%= book.getId() %>" class="btn btn-primary">Editar</a>
                                <%
                                        break;
                                    case 1:
                                %>
                                <a href="book-edit.jsp?id=<%= book.getId() %>" class="btn btn-primary">Reservar</a>
                                <a href="book-edit.jsp?id=<%= book.getId() %>" class="btn btn-primary">Editar</a>
                                <a href="book-delete.jsp?id=<%= book.getId() %>" class="btn btn-danger">Eliminar</a>
                                <% break;
                                }
                                %>
                            </td>
                        
                        </tr>
                        <%
                            }
                        %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        
        <% if (userRole < 3) { %>
        
        <div class="container-fluid">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title
                    fw-semibold mb-4">Agregar libro</h5>
                    <p class="mb-0">Agrega un nuevo libro a la biblioteca</p>
                    <a href="book-add.jsp" class="btn btn-primary">Agregar</a>
                </div>
            </div>
        </div>
        
        <% } %>
    
    </div>
</div>
<script src="../assets/libs/jquery/dist/jquery.min.js"></script>
<script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/sidebarmenu.js"></script>
<script src="../assets/js/app.min.js"></script>
<script src="../assets/libs/apexcharts/dist/apexcharts.min.js"></script>
<script src="../assets/libs/simplebar/dist/simplebar.js"></script>
<script src="../assets/js/dashboard.js"></script>
<script src="../assets/js/datatables.js"></script>
<script src="../assets/js/datatables.min.js"></script>
<script src="../assets/js/datatable.configuration.js"></script>
</body>
</html>