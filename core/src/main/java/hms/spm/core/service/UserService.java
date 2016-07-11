package hms.spm.core.service;

import ucsc.mis.orm.model.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("userService") @Transactional
public interface UserService {

    long createUser(String userName, String email, String password, String confirmPassword, long userCategoryId) throws
            UserManagementException;

    void updateUser(long id, String name, String email, long userCategoryId) throws UserManagementException;

    void updateUser(User user);

    void changePassword(long userId, String oldPassword, String newPassword, String confirmPassword) throws
            UserManagementException;

    void changePassword(long userId, String newPassword, String confirmPassword) throws
            UserManagementException;


    void activateUser(User user) throws UserManagementException;

    void deactivateUser(User user) throws UserManagementException;

    List<User> getAllUsers();

    List<User> getAllNonAdminUsers();

    User getUserByName(String name);

    User getUserById(long id);

    long createUser(String userName, String email, String phoneNo) throws UserManagementException;

    long createUser(User user);
}
