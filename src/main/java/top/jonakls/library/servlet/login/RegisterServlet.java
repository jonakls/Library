package top.jonakls.library.servlet.login;

import top.jonakls.library.controller.UserPersistenceController;
import top.jonakls.library.entity.UserEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {

    private final UserPersistenceController userPersistenceController = new UserPersistenceController();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // inputName, inputSecondName, inputEmail, inputPassword
        final String name = req.getParameter("inputName");
        final String secondName = req.getParameter("inputSecondName");
        final String email = req.getParameter("inputEmail");
        final String password = req.getParameter("inputPassword");

        final UserEntity user = new UserEntity();

        user.setName(name);
        user.setSecondName(secondName);
        user.setEmail(email);
        user.setPassword(password);
        user.setRole(3);

        if (userPersistenceController.register(user)) {
            req.getSession().setAttribute("user", user);
            resp.sendRedirect(req.getContextPath() + "/index.jsp");
        } else {
            req.getSession().setAttribute("errorMessage", "El usuario ya existe");
            resp.sendRedirect(req.getContextPath() + "/authentication-register.jsp?error=0");
        }

    }
}
