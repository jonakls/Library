<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    final int role = (int) request.getSession().getAttribute("userRole");
    
    if (role > 1) {
        response.sendRedirect(request.getContextPath() + "/index.jsp?error=0");
        request.getSession().setAttribute("errorMessage", "No tienes permisos para acceder a esta página");
    }
%>