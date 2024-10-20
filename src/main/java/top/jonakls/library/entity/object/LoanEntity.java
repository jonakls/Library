package top.jonakls.library.entity.object;

import top.jonakls.library.entity.ObjectEntity;
import top.jonakls.library.entity.UserEntity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class LoanEntity implements ObjectEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @OneToOne(targetEntity = UserEntity.class)
    private UserEntity user;
    @OneToOne(targetEntity = BookEntity.class)
    private BookEntity book;
    private String loanDate;
    private String returnDate;
    private String status;

    public LoanEntity(int id, UserEntity user, BookEntity book, String loanDate, String returnDate, String status) {
        this.id = id;
        this.user = user;
        this.book = book;
        this.loanDate = loanDate;
        this.returnDate = returnDate;
        this.status = status;
    }

    public LoanEntity() {
    }

    @Override
    public int getId() {
        return this.id;
    }

    public UserEntity getUser() {
        return this.user;
    }

    public void setUser(UserEntity userId) {
        this.user = userId;
    }

    public BookEntity getBook() {
        return this.book;
    }

    public void setBook(BookEntity bookId) {
        this.book = bookId;
    }

    public String getLoanDate() {
        return this.loanDate;
    }

    public void setLoanDate(String loanDate) {
        this.loanDate = loanDate;
    }

    public String getReturnDate() {
        return this.returnDate;
    }

    public void setReturnDate(String returnDate) {
        this.returnDate = returnDate;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
