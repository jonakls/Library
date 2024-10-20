<%@ page import="top.jonakls.library.entity.object.BookEntity" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <title>Biblioteca | Añadir un libro</title>
    <link href="../assets/images/logos/favicon.png" rel="shortcut icon" type="image/png"/>
    <link href="../assets/css/styles.min.css" rel="stylesheet"/>
</head>

<body>
<%@include file="../util/session-util.jsp" %>
<%@include file="../util/bookseller-util.jsp" %>

<%
    final String errorParam = request.getParameter("error");
    if (errorParam != null) {
        String errorMessage = session.getAttribute("errorMessage") != null ? (String) session.getAttribute("errorMessage") : "Error desconocido";
        session.removeAttribute("errorMessage");
        
        out.println("<script>");
        out.println("showError('" + errorMessage + "');");
        out.println("</script>");
    }
    
    final BookEntity book = (BookEntity) session.getAttribute("book");
    if (book == null) {
        out.println("<script>");
        out.println("showError('El libro que trataste de editar, no existe');");
        out.println("</script>");
        response.sendRedirect(request.getContextPath() + "/book/book-table.jsp");
        return;
    }
%>
<!--  Body Wrapper -->
<div class="page-wrapper" data-header-position="fixed" data-layout="vertical" data-navbarbg="skin6"
     data-sidebar-position="fixed"
     data-sidebartype="full" id="main-wrapper">
    <!-- Sidebar Start -->
    <jsp:include page="../layout/sidebar-layout.jsp"/>
    
    <!--  Main wrapper -->
    <div class="body-wrapper">
        <!--  Header Start -->
        <jsp:include page="../layout/header-layout.jsp"/>
        <!--  Header End -->
        <div class="container-fluid">
            <div class="container-fluid">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title fw-semibold mb-4">Edición de libro <%= book.getId()%></h5>
                        <div class="card">
                            <div class="card-body">
                                <form action="${pageContext.request.contextPath}/book/edit" method="post">
                                    <input type="hidden" name="edit" value="0">
                                    <div class="mb-3">
                                        <label class="form-label" for="editedBookId">Id del libro</label>
                                        <input aria-describedby="emailHelp" class="form-control" id="editedBookId"
                                               type="number" name="editedBookId" value="<%=book.getId()%>" disabled>
                                        <!--<div class="form-text" id="emailHelp">We'll never share your email with anyone
                                            else. </div>-->
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="inputTitle">Titulo del libro</label>
                                        <input aria-describedby="emailHelp" class="form-control" id="inputTitle"
                                               type="text" name="inputTitle" value="<%=book.getTitle()%>" required>
                                        <!--<div class="form-text" id="emailHelp">We'll never share your email with anyone
                                            else. </div>-->
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="inputAuthor">Nombre del autor</label>
                                        <input aria-describedby="emailHelp" class="form-control" id="inputAuthor"
                                               type="text" name="inputAuthor" value="<%=book.getAuthor()%>" required>
                                        <!--<div class="form-text" id="emailHelp">We'll never share your email with anyone
                                            else. </div>-->
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="inputGenre">Genero del libro</label>
                                        <input aria-describedby="emailHelp" class="form-control" id="inputGenre"
                                               type="text" name="inputGenre" value="<%=book.getGenre()%>" required>
                                        <!--<div class="form-text" id="emailHelp">We'll never share your email with anyone
                                            else. </div>-->
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="inputYear">Año del libro</label>
                                        <input aria-describedby="emailHelp" class="form-control" id="inputYear"
                                               type="number" name="inputYear" value="<%=book.getYear()%>" required>
                                        <!--<div class="form-text" id="emailHelp">We'll never share your email with anyone
                                            else. </div>-->
                                    </div>
                                    <button class="btn btn-primary" type="submit">Editar</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="../assets/libs/jquery/dist/jquery.min.js"></script>
<script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/sidebarmenu.js"></script>
<script src="../assets/js/app.min.js"></script>
<script src="../assets/libs/simplebar/dist/simplebar.js"></script>
</body>

</html>