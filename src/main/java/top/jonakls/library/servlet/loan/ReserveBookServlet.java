package top.jonakls.library.servlet.loan;

import top.jonakls.library.controller.BookPersistenceController;
import top.jonakls.library.controller.LoanPersistenceController;
import top.jonakls.library.controller.UserPersistenceController;
import top.jonakls.library.entity.UserEntity;
import top.jonakls.library.entity.object.BookEntity;
import top.jonakls.library.entity.object.LoanEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ReserveBookServlet", urlPatterns = {"/loan/reserve"})
public class ReserveBookServlet extends HttpServlet {

    private final LoanPersistenceController loanPersistenceController = new LoanPersistenceController();
    private final BookPersistenceController bookPersistenceController = new BookPersistenceController();
    private final UserPersistenceController userPersistenceController = new UserPersistenceController();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int bookId = Integer.parseInt(req.getParameter("bookId"));
        int userId = Integer.parseInt(req.getParameter("userId"));

        LoanEntity loan = loanPersistenceController.getLoanByBookId(bookId);
        LoanEntity loan2 = loanPersistenceController.getLoanByUserId(userId);

        if (loan != null) {
            resp.sendRedirect(req.getContextPath() + "/book/book-table.jsp?error=0");
            req.getSession().setAttribute("errorMessage", "El libro ya está reservado");
            return;
        }

        final BookEntity book = bookPersistenceController.findBookById(bookId);
        final UserEntity user = userPersistenceController.findUserById(userId);

        if (book == null || user == null) {
            resp.sendRedirect(req.getContextPath() + "/loan/loan-table.jsp");
            return;
        }

        loan = new LoanEntity();
        loan.setBook(book);
        loan.setUser(user);
        loan.setStatus("Reservado");
        loanPersistenceController.saveLoan(loan);

        resp.sendRedirect(req.getContextPath() + "/loan/loan-table.jsp");

    }
}
