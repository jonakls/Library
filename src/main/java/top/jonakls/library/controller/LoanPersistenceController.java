package top.jonakls.library.controller;

import top.jonakls.library.entity.object.LoanEntity;
import top.jonakls.library.persistence.ObjectJpaPersistence;

import javax.persistence.EntityManager;
import java.util.List;

public class LoanPersistenceController {

    private ObjectJpaPersistence<LoanEntity> loanPersistence = new ObjectJpaPersistence<>(LoanEntity.class);

    public void saveLoan(LoanEntity loan) {
        this.loanPersistence.save(loan);
    }

    public void updateLoan(LoanEntity loan) {
        this.loanPersistence.updateOne(loan);
    }

    public void deleteLoan(LoanEntity loan) {
        this.loanPersistence.deleteOne(loan);
    }

    public LoanEntity getLoanById(int id) {
        return this.loanPersistence.findOne(id);
    }

    public LoanEntity getLoanByBookId(int bookId) {
        return this.loanPersistence.findObjectByField("book.id", bookId);
    }

    public LoanEntity getLoanByUserId(int userId) {
        return this.loanPersistence.findObjectByField("user.id", userId);
    }

    public List<LoanEntity> getAllLoans() {
        return this.loanPersistence.findAll();
    }
}
