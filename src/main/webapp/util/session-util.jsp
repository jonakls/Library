<%@ page import="top.jonakls.library.entity.UserEntity" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="extra-libs.jsp" %>
<%
    final HttpSession mySession = request.getSession();
    final UserEntity user = (UserEntity) mySession.getAttribute("user");
    final String defaultPath = request.getContextPath() + "/authentication-login.jsp";
    
    if (user == null) {
        response.sendRedirect(defaultPath);
    } else {
        final int userRole = user.getRole() == 0 ? 3 : user.getRole();
        mySession.setAttribute("userRole", userRole);
        mySession.setAttribute("userId", user.getId());
    }

%>
