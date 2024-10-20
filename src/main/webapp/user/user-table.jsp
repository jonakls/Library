<%@ page import="top.jonakls.library.controller.UserPersistenceController" %>
<%@ page import="java.util.List" %>
<%@ page import="top.jonakls.library.util.RoleUtil" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="es">

<head>
    <title>Biblioteca | Lista de usuarios</title>
</head>

<body>
<%@include file="../util/extra-libs.jsp" %>
<%@include file="../util/session-util.jsp" %>
<%@include file="../util/administrator-util.jsp" %>

<%
    final UserPersistenceController userPersistenceController = new UserPersistenceController();
    
    final List<UserEntity> users = userPersistenceController.findAllUsers();
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
                    
                    <h5 class="card-title fw-semibold mb-4">Tabla de usuarios</h5>
                    <p class="mb-0">Tabla de caracter administrativa de usuarios</p>
                    
                    <table class="table table-striped text-nowrap mb-0 align-middle" id="template-table">
                        <thead class="text-dark fs-4">
                        <tr>
                            <th class="border-bottom-0" scope="col">#</th>
                            <th class="border-bottom-0" scope="col">Nombre completo</th>
                            <th class="border-bottom-0" scope="col">Correo</th>
                            <th class="border-bottom-0" scope="col">Rol</th>
                            <th class="border-bottom-0" scope="col">Acciones</th>
                        </tr>
                        </thead>
                        <tbody>
                        <% for (UserEntity cachedUser : users) { %>
                        <tr>
                            <th class="border-bottom-0" scope="row"><%=cachedUser.getId()%>
                            </th>
                            <td class="border-bottom-0"><%=cachedUser.getName() + " " + cachedUser.getSecondName()%>
                            </td>
                            <td class="border-bottom-0"><%=cachedUser.getEmail()%>
                            </td>
                            <td class="border-bottom-0"><%=RoleUtil.getRoleByInt(cachedUser.getRole()).getRoleName()%>
                            </td>
                            <td class="border-bottom-0">
                                <a href="<%=request.getContextPath()%>/user/edit?id=<%=cachedUser.getId()%>"
                                   class="btn btn-primary">Editar</a>
                                <a href="<%=request.getContextPath()%>/user/delete?id=<%=cachedUser.getId()%>"
                                   class="btn btn-danger">Eliminar</a>
                            </td>
                        </tr>
                        <% } %>
                        </tbody>
                    
                    </table>
                
                </div>
            </div>
        </div>
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