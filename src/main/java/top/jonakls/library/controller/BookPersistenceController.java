package top.jonakls.library.controller;

import top.jonakls.library.entity.object.BookEntity;
import top.jonakls.library.persistence.ObjectJpaPersistence;

import java.util.List;

public class BookPersistenceController {

    private final static ObjectJpaPersistence<BookEntity> BOOK_PERSISTENCE = new ObjectJpaPersistence<>(BookEntity.class);

    public boolean save(BookEntity book) {
        return BOOK_PERSISTENCE.save(book);
    }

    public void update(BookEntity book) {
        BOOK_PERSISTENCE.updateOne(book);
    }

    public void delete(BookEntity book) {
        BOOK_PERSISTENCE.deleteOne(book);
    }

    public BookEntity findBookById(int id) {
        return BOOK_PERSISTENCE.findOne(id);
    }

    public BookEntity findBookByTitle(String title) {
        return BOOK_PERSISTENCE.findObjectByField("title", title);
    }

    public BookEntity findBookByAuthor(String author) {
        return BOOK_PERSISTENCE.findObjectByField("author", author);
    }

    public BookEntity findBookByIsbn(String isbn) {
        return BOOK_PERSISTENCE.findObjectByField("isbn", isbn);
    }

    public List<BookEntity> findAllBooks() {
        return BOOK_PERSISTENCE.findAll();
    }


}
