<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
    <title>Header Layout</title>
    <jsp:include page="../util/extra-libs.jsp"/>
</head>
<body>

<header class="app-header">
    <nav class="navbar navbar-expand-lg navbar-light">
        <ul class="navbar-nav">
            <li class="nav-item d-block d-xl-none">
                <a class="nav-link sidebartoggler nav-icon-hover" href="javascript:void(0)" id="headerCollapse">
                    <i class="ti ti-menu-2"></i>
                </a>
            </li>
        </ul>
        <div class="navbar-collapse justify-content-end px-0" id="navbarNav">
            <ul class="navbar-nav flex-row ms-auto align-items-center justify-content-end">
                <li class="nav-item dropdown">
                    <a aria-expanded="false" class="nav-link nav-icon-hover" data-bs-toggle="dropdown"
                       href="javascript:void(0)"
                       id="drop2">
                        <img alt="" class="rounded-circle" height="35"
                             src="<%=request.getContextPath()%>/assets/images/profile/user-1.jpg"
                             width="35">
                    </a>
                    <div aria-labelledby="drop2"
                         class="dropdown-menu dropdown-menu-end dropdown-menu-animate-up">
                        <div class="message-body">
                            <a class="d-flex align-items-center gap-2 dropdown-item" href="javascript:void(0)">
                                <i class="ti ti-user fs-6"></i>
                                <p class="mb-0 fs-3">Mi perfil</p>
                            </a>
                            <a class="d-flex align-items-center gap-2 dropdown-item" href="javascript:void(0)">
                                <i class="ti ti-mail fs-6"></i>
                                <p class="mb-0 fs-3">Mi cuenta</p>
                            </a>
                            <a class="d-flex align-items-center gap-2 dropdown-item" href="javascript:void(0)">
                                <i class="ti ti-list-check fs-6"></i>
                                <p class="mb-0 fs-3">My Task</p>
                            </a>
                            <a class="btn btn-outline-primary mx-3 mt-2 d-block"
                               href="<%=request.getContextPath()%>/authentication-login.jsp">Cerrar sesión</a>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
</header>
</body>
</html>
