package top.jonakls.library.servlet.book;

import top.jonakls.library.controller.BookPersistenceController;
import top.jonakls.library.entity.object.BookEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "BookRemoveServlet", urlPatterns = "/book/remove")
public class BookRemoveServlet extends HttpServlet {

    private final BookPersistenceController bookPersistenceController = new BookPersistenceController();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final int id = Integer.parseInt(req.getParameter("inputId"));

        final BookEntity bookEntity = bookPersistenceController.findBookById(id);
        bookPersistenceController.delete(bookEntity);
    }
}
