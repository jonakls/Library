package top.jonakls.library.servlet.login;

import top.jonakls.library.controller.UserPersistenceController;
import top.jonakls.library.entity.UserEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/login", name = "LoginServlet")
public class LoginServlet extends HttpServlet {

    private final UserPersistenceController userPersistenceController = new UserPersistenceController();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final String email = req.getParameter("inputEmail");
        final String password = req.getParameter("inputPassword");
        final UserEntity user = userPersistenceController.login(email, password);

        if (user != null) {
            req.getSession().setAttribute("user", user);
            resp.sendRedirect(req.getContextPath() + "/index.jsp");
        } else {
            req.setAttribute("errorMessage", "Contraseña o email incorrecto");
            resp.sendRedirect(req.getContextPath() + "/authentication-login.jsp?error=0");
        }
    }
}
