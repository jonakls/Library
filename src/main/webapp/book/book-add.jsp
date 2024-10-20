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
                        <h5 class="card-title fw-semibold mb-4">Forms</h5>
                        <div class="card">
                            <div class="card-body">
                                <form action="${pageContext.request.contextPath}/book/add" method="post">
                                    <div class="mb-3">
                                        <label class="form-label" for="inputTitle">Titulo del libro</label>
                                        <input aria-describedby="emailHelp" class="form-control" id="inputTitle"
                                               type="text" name="inputTitle">
                                        <!--<div class="form-text" id="emailHelp">We'll never share your email with anyone
                                            else. </div>-->
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="inputAuthor">Nombre del autor</label>
                                        <input aria-describedby="emailHelp" class="form-control" id="inputAuthor"
                                               type="text" name="inputAuthor">
                                        <!--<div class="form-text" id="emailHelp">We'll never share your email with anyone
                                            else. </div>-->
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="inputGenre">Genero del libro</label>
                                        <input aria-describedby="emailHelp" class="form-control" id="inputGenre"
                                               type="text" name="inputGenre">
                                        <!--<div class="form-text" id="emailHelp">We'll never share your email with anyone
                                            else. </div>-->
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="inputYear">Año del libro</label>
                                        <input aria-describedby="emailHelp" class="form-control" id="inputYear"
                                               type="number" name="inputYear">
                                        <!--<div class="form-text" id="emailHelp">We'll never share your email with anyone
                                            else. </div>-->
                                    </div>
                                    <button class="btn btn-primary" type="submit">Agregar</button>
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