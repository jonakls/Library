package top.jonakls.library.controller;

import top.jonakls.library.entity.UserEntity;
import top.jonakls.library.persistence.ObjectJpaPersistence;
import top.jonakls.library.util.PasswordUtil;

import java.util.List;

public class UserPersistenceController {

    private final static ObjectJpaPersistence<UserEntity> USER_PERSISTENCE = new ObjectJpaPersistence<>(UserEntity.class);

    /**
     * Inicio de sesión de usuario en la aplicación
     *
     * @param email    correo electrónico del usuario
     * @param password contraseña del usuario
     * @return entidad del usuario si el inicio de sesión es correcto, de lo contrario null
     */
    public UserEntity login(String email, String password) {
        final UserEntity user = USER_PERSISTENCE.findObjectByField("email", email);

        if (user == null) {
            return null;
        }

        if (PasswordUtil.comparePassword(password, user.getPassword())) {
            return user;
        }

        return null;
    }

    /**
     * Registro de un nuevo usuario en la aplicación
     *
     * @param user entidad del usuario a registrar
     * @return true si el registro es exitoso, de lo contrario false
     */
    public boolean register(UserEntity user) {
        final UserEntity userByEmail = USER_PERSISTENCE.findObjectByField("email", user.getEmail());

        if (userByEmail != null) {
            return false;
        }

        user.setPassword(PasswordUtil.hash(user.getPassword()));
        return USER_PERSISTENCE.save(user);
    }

    /**
     * Actualización de los datos de un usuario en la aplicación
     *
     * @param user entidad del usuario a actualizar
     */

    public void update(UserEntity user) {
        USER_PERSISTENCE.updateOne(user);
    }

    /**
     * Búsqueda de un usuario por su identificador
     *
     * @param id identificador del usuario
     * @return entidad del usuario si se encuentra, de lo contrario null
     */
    public UserEntity findUserById(int id) {
        return USER_PERSISTENCE.findOne(id);
    }

    /**
     * Búsqueda de un usuario por su correo electrónico
     *
     * @param email correo electrónico del usuario
     * @return entidad del usuario si se encuentra, de lo contrario null
     */
    public UserEntity findUserByEmail(String email) {
        return USER_PERSISTENCE.findObjectByField("email", email);
    }

    /**
     * Eliminación de un usuario de la aplicación
     *
     * @param user entidad del usuario a eliminar
     */
    public void deleteUser(UserEntity user) {
        USER_PERSISTENCE.deleteOne(user);
    }

    /**
     * Búsqueda de todos los usuarios registrados en la aplicación
     *
     * @return lista de entidades de usuarios
     */
    public List<UserEntity> findAllUsers() {
        return USER_PERSISTENCE.findAll();
    }

    /**
     * Editar contraseña de un usuario
     *
     * @return true si la contraseña se ha editado correctamente, de lo contrario false
     */
    public boolean editPassword(UserEntity user, String newPassword, String oldPassword) {
        if (PasswordUtil.comparePassword(oldPassword, user.getPassword())) {
            user.setPassword(PasswordUtil.hash(newPassword));
            USER_PERSISTENCE.updateOne(user);
            return true;
        }
        return false;
    }

}
