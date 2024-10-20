package top.jonakls.library.servlet.book;

import top.jonakls.library.controller.BookPersistenceController;
import top.jonakls.library.entity.object.BookEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "BookAddServlet", urlPatterns = "/book/add")
public class BookAddServlet extends HttpServlet {

    private final BookPersistenceController bookPersistenceController = new BookPersistenceController();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final String title = req.getParameter("inputTitle");
        final String author = req.getParameter("inputAuthor");
        final int year = Integer.parseInt(req.getParameter("inputYear"));
        final String genre = req.getParameter("inputGenre");

        final BookEntity bookEntity = new BookEntity();
        bookEntity.setTitle(title);
        bookEntity.setAuthor(author);
        bookEntity.setYear(year);
        bookEntity.setGenre(genre);
        bookEntity.setAvailability("Disponible");

        if (bookPersistenceController.save(bookEntity)) {
            resp.sendRedirect(req.getContextPath() + "/book/book-table.jsp?success=0");
            req.getSession().setAttribute("successMessage", "Libro agregado correctamente");
        } else {
            resp.sendRedirect(req.getContextPath() + "/book/book-table.jsp?error=0");
            req.getSession().setAttribute("errorMessage", "No se pudo agregar el libro");
        }

    }
}
