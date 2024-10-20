<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="es">

<head>
    <title>Biblioteca | Template basica</title>
</head>

<body>
<%@include file="util/extra-libs.jsp" %>
<%@include file="util/session-util.jsp" %>
<!--  Body Wrapper -->
<div class="page-wrapper" data-header-position="fixed" data-layout="vertical" data-navbarbg="skin6"
     data-sidebar-position="fixed"
     data-sidebartype="full" id="main-wrapper">
    <!-- Sidebar Component -->
    <jsp:include page="layout/sidebar-layout.jsp"/>
    
    <!--  Main wrapper -->
    <div class="body-wrapper">
        <!--  Header Component -->
        <jsp:include page="layout/header-layout.jsp"/>
        
        <div class="container-fluid">
            <div class="card">
                <div class="card-body">
                    
                    <h5 class="card-title fw-semibold mb-4">Template table of data</h5>
                    <p class="mb-0">This
                        is a sample page with a table of data</p>
                    
                    <table class="table table-striped text-nowrap mb-0 align-middle" id="template-table">
                        <thead class="text-dark fs-4">
                        <tr>
                            <th class="border-bottom-0" scope="col">#</th>
                            <th class="border-bottom-0" scope="col">Nombre</th>
                            <th class="border-bottom-0" scope="col">Segundo nombre</th>
                            <th class="border-bottom-0" scope="col">Nick</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th class="border-bottom-0" scope="row">1</th>
                            <td class="border-bottom-0">Mark</td>
                            <td class="border-bottom-0">Otto</td>
                            <td class="border-bottom-0">@mdo</td>
                        </tr>
                        <tr>
                            <th class="border-bottom-0" scope="row">2</th>
                            <td class="border-bottom-0">Jacob</td>
                            <td class="border-bottom-0">Thornton</td>
                            <td class="border-bottom-0">@fat</td>
                        </tr>
                        </tbody>
                    </table>
                
                </div>
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
<script src="./assets/js/datatables.js"></script>
<script src="./assets/js/datatables.min.js"></script>
<script src="./assets/js/datatable.configuration.js"></script>
</body>
</html>