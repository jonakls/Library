<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <title>Biblioteca | Inicio de sesión</title>
    <link href="./assets/images/logos/favicon.png" rel="shortcut icon" type="image/png"/>
    <link href="./assets/css/styles.min.css" rel="stylesheet"/>
    <jsp:include page="util/extra-libs.jsp"/>
</head>
<body>

<%
    final String errorParam = request.getParameter("error");
    
    if (errorParam != null) {
        String errorMessage = session.getAttribute("errorMessage") != null ? (String) session.getAttribute("errorMessage") : "Error desconocido";
        session.removeAttribute("errorMessage");
        
        out.println("<script>");
        out.println("showError('" + errorMessage + "');");
        out.println("</script>");
    }
%>


<!--  Body Wrapper -->
<div class="page-wrapper" data-header-position="fixed" data-layout="vertical" data-navbarbg="skin6"
     data-sidebar-position="fixed"
     data-sidebartype="full" id="main-wrapper">
    <div
            class="position-relative overflow-hidden radial-gradient min-vh-100 d-flex align-items-center justify-content-center">
        <div class="d-flex align-items-center justify-content-center w-100">
            <div class="row justify-content-center w-100">
                <div class="col-md-8 col-lg-6 col-xxl-3">
                    <div class="card mb-0">
                        <div class="card-body">
                            <a class="text-nowrap logo-img text-center d-block py-3 w-100" href="index.jsp">
                                <img alt="" src="./assets/images/logos/dark-logo.svg" width="180">
                            </a>
                            <p class="text-center">Bienvenido a la Biblioteca</p>
                            <form action="login" method="post">
                                <div class="mb-3">
                                    <label class="form-label" for="inputEmail">Correo electronico</label>
                                    <input aria-describedby="emailHelp" class="form-control" id="inputEmail"
                                           type="email" name="inputEmail" required>
                                </div>
                                <div class="mb-4">
                                    <label class="form-label" for="inputPassword">Contraseña</label>
                                    <input class="form-control" id="inputPassword" type="password" name="inputPassword"
                                           required>
                                </div>
                                <div class="d-flex align-items-center justify-content-between mb-4">
                                    <div class="form-check">
                                        <input checked class="form-check-input primary" id="flexCheckChecked"
                                               type="checkbox" value="">
                                        <label class="form-check-label text-dark" for="flexCheckChecked">
                                            Recordar esta cuenta
                                        </label>
                                    </div>
                                    <a class="text-primary fw-bold" href="#">¿No recuerda su contraseña?</a>
                                </div>
                                <!--<a class="btn btn-primary w-100 py-8 fs-4 mb-4 rounded-2" href="login">Ingresar</a>-->
                                <button class="btn btn-outline-primary w-100 py-8 fs-4 mb-4 rounded-2" type="submit">
                                    Ingresar
                                </button>
                                <div class="d-flex align-items-center justify-content-center">
                                    <p class="fs-4 mb-0 fw-bold">¿Nuevo en la biblioteca?</p>
                                    <a class="text-primary fw-bold ms-2" href="authentication-register.jsp">Crear
                                        cuenta
                                        nueva</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="./assets/libs/jquery/dist/jquery.min.js"></script>
<script src="./assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>