package top.jonakls.library.servlet.book;

import top.jonakls.library.controller.BookPersistenceController;
import top.jonakls.library.entity.object.BookEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "BookEditServlet", urlPatterns = "/book/edit")
public class BookEditServlet extends HttpServlet {

    private final BookPersistenceController bookPersistenceController = new BookPersistenceController();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final String edit = req.getParameter("edit");
        final String id = req.getParameter("editedBookId");

        if (id == null || id.isEmpty()) {
            resp.sendRedirect(req.getContextPath() + "/book/book-edit.jsp?error=0");
            req.getSession().setAttribute("errorMessage", "No se pudo encontrar el libro");
            return;
        }

        final BookEntity book = bookPersistenceController.findBookById(Integer.parseInt(id));

        if (book == null) {
            resp.sendRedirect(req.getContextPath() + "/book/book-edit.jsp?error=0");
            req.getSession().setAttribute("errorMessage", "No se pudo encontrar el libro");
            return;
        }

        if (edit == null || edit.isEmpty()) {
            resp.sendRedirect(req.getContextPath() + "/book/book-edit.jsp");
            req.getSession().setAttribute("book", book);
            return;
        }

        final String author = req.getParameter("inputAuthor");
        final String title = req.getParameter("inputTitle");
        final int year = Integer.parseInt(req.getParameter("inputYear"));
        final String genre = req.getParameter("inputGenre");

        book.setTitle(title);
        book.setAuthor(author);
        book.setYear(year);
        book.setGenre(genre);

        bookPersistenceController.update(book);
    }
}
