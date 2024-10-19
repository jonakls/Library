package top.jonakls.library.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class UserEntity implements ObjectEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String name;
    private String secondName;
    private String email;
    private String password;
    private int role;

    public UserEntity(int id, String name, String secondName, String email, String password, int role) {
        this.id = id;
        this.name = name;
        this.secondName = secondName;
        this.email = email;
        this.password = password;
        this.role = role;
    }

    public UserEntity() {
    }

    @Override
    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSecondName() {
        return this.secondName;
    }

    public void setSecondName(String secondName) {
        this.secondName = secondName;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole() {
        return this.role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public enum UserRole {
        ADMIN(1, "Administrador"),
        BOOK_SELLER(2, "Librero"),
        USER(3, "Usuario");

        private final int id;
        private final String roleName;

        UserRole(int id, String roleName) {
            this.id = id;
            this.roleName = roleName;
        }

        public int getId() {
            return this.id;
        }

        public String getRoleName() {
            return this.roleName;
        }
    }
}
