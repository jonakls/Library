<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Sidebar Layout</title>
    <jsp:include page="../util/extra-libs.jsp"/>
</head>
<body>

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
                    <a aria-expanded="false" class="sidebar-link" href="<%=request.getContextPath()%>/ui-buttons.html">
                <span>
                  <i class="ti ti-article"></i>
                </span>
                        <span class="hide-menu">Buttons</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a aria-expanded="false" class="sidebar-link" href="<%=request.getContextPath()%>/ui-alerts.html">
                <span>
                  <i class="ti ti-alert-circle"></i>
                </span>
                        <span class="hide-menu">Alerts</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a aria-expanded="false" class="sidebar-link" href="<%=request.getContextPath()%>/ui-card.html">
                <span>
                  <i class="ti ti-cards"></i>
                </span>
                        <span class="hide-menu">Card</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a aria-expanded="false" class="sidebar-link" href="<%=request.getContextPath()%>/template-forms.jsp">
                <span>
                  <i class="ti ti-file-description"></i>
                </span>
                        <span class="hide-menu">Forms</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a aria-expanded="false" class="sidebar-link"
                       href="<%=request.getContextPath()%>/ui-typography.html">
                <span>
                  <i class="ti ti-typography"></i>
                </span>
                        <span class="hide-menu">Typography</span>
                    </a>
                </li>
                <li class="nav-small-cap">
                    <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
                    <span class="hide-menu">AUTH</span>
                </li>
                <li class="sidebar-item">
                    <a aria-expanded="false" class="sidebar-link"
                       href="<%=request.getContextPath()%>/authentication-login.jsp">
                <span>
                  <i class="ti ti-login"></i>
                </span>
                        <span class="hide-menu">Login</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a aria-expanded="false" class="sidebar-link"
                       href="<%=request.getContextPath()%>/authentication-register.jsp">
                <span>
                  <i class="ti ti-user-plus"></i>
                </span>
                        <span class="hide-menu">Register</span>
                    </a>
                </li>
                <li class="nav-small-cap">
                    <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
                    <span class="hide-menu">EXTRA</span>
                </li>
                <li class="sidebar-item">
                    <a aria-expanded="false" class="sidebar-link" href="<%=request.getContextPath()%>/icon-tabler.html">
                <span>
                  <i class="ti ti-mood-happy"></i>
                </span>
                        <span class="hide-menu">Icons</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a aria-expanded="false" class="sidebar-link" href="<%=request.getContextPath()%>/template-page.jsp">
                <span>
                  <i class="ti ti-aperture"></i>
                </span>
                        <span class="hide-menu">Sample Page</span>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
</aside>
<!--  Sidebar End -->

</body>
</html>
