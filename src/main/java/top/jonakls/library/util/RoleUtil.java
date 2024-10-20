package top.jonakls.library.util;

import top.jonakls.library.entity.UserEntity;

public final class RoleUtil {

    private RoleUtil() {
        throw new UnsupportedOperationException("This class should not be instantiated");
    }

    public static UserEntity.UserRole getRoleByInt(int role) {
        switch (role) {
            case 1:
                return UserEntity.UserRole.ADMIN;
            case 2:
                return UserEntity.UserRole.BOOK_SELLER;
            default:
                return UserEntity.UserRole.USER;
        }
    }
}
