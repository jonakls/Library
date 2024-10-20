<%@ page import="top.jonakls.library.entity.object.BookEntity" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Sidebar Layout</title>
    <jsp:include page="../util/extra-libs.jsp"/>
</head>
<body>
<%
    int userRole = session.getAttribute("userRole") == null ? 0 : (int) session.getAttribute("userRole");
%>

<!-- Sidebar Start -->
<aside class="left-sidebar">
    <!-- Sidebar scroll-->
    <div>
        <div class="brand-logo d-flex align-items-center justify-content-between">
            <a class="text-nowrap logo-img" href="<%=request.getContextPath()%>/index.jsp">
                <img alt="" src="<%=request.getContextPath()%>/assets/images/logos/dark-logo.svg" width="180"/>
            </a>
            <div class="close-btn d-xl-none d-block sidebartoggler cursor-pointer" id="sidebarCollapse">
                <i class="ti ti-x fs-8"></i>
            </div>
        </div>
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav scroll-sidebar" data-simplebar="">
            <ul id="sidebarnav">
                <li class="nav-small-cap">
                    <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
                    <span class="hide-menu">Inicio</span>
                </li>
                <li class="sidebar-item">
                    <a aria-expanded="false" class="sidebar-link" href="<%=request.getContextPath()%>/index.jsp">
                <span>
                  <i class="ti ti-layout-dashboard"></i>
                </span>
                        <span class="hide-menu">Panel principal</span>
                    </a>
                </li>
                <li class="nav-small-cap">
                    <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
                    <span class="hide-menu">Biblioteca</span>
                </li>
                <li class="sidebar-item">
                    <a aria-expanded="false" class="sidebar-link"
                       href="<%=request.getContextPath()%>/book/book-table.jsp">
                <span>
                  <i class="ti ti-article"></i>
                </span>
                        <span class="hide-menu">Libros</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a aria-expanded="false" class="sidebar-link"
                       href="<%=request.getContextPath()%>/loan/loan-table.jsp">
                <span>
                  <i class="ti ti-alert-circle"></i>
                </span>
                        <span class="hide-menu">Prestamos</span>
                    </a>
                </li>
                
                <% if (userRole == 1) { %>
                <li class="nav-small-cap">
                    <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
                    <span class="hide-menu">Administración</span>
                </li>
                
                <li class="sidebar-item">
                    <a aria-expanded="false" class="sidebar-link"
                       href="<%=request.getContextPath()%>/user/user-table.jsp">
                <span>
                  <i class="ti ti-article"></i>
                </span>
                        <span class="hide-menu">Usuarios</span>
                    </a>
                </li>
                <% } %>
            
            </ul>
        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
</aside>
<!--  Sidebar End -->

</body>
</html>
