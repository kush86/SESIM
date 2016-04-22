package hms.spm.core.service.impl;

import hms.spm.core.service.ErrorCode;
import hms.spm.core.service.UserManagementException;
import hms.spm.core.service.UserService;
import ucsc.mis.orm.dao.UserCategoryDao;
import ucsc.mis.orm.dao.UserDao;
import ucsc.mis.orm.model.User;
import ucsc.mis.orm.model.UserCategory;
import org.apache.commons.validator.routines.EmailValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Autowired
    private UserCategoryDao userCategoryDao;

    public long createUser(String userName, String email, String password, String confirmPassword, long userCategoryId)
            throws UserManagementException {

        if (userName == null || password == null || confirmPassword == null || userName.isEmpty() || password.isEmpty()
            || confirmPassword.isEmpty()) {
            throw new UserManagementException(ErrorCode.EMPTY_REQUIRED_PARAMETERS);
        }

        validateEmail(email);

        if (!password.equals(confirmPassword)) {
            throw new UserManagementException(ErrorCode.INVALID_CONFIRM_PASSWORD);
        }

        User anotherUser = userDao.findUserByName(userName);
        if (anotherUser != null) {
            throw new UserManagementException(ErrorCode.DUPLICATE_USERNAME);
        }

        UserCategory userCategory = userCategoryDao.findUserCategoryById(userCategoryId);
        if (userCategory == null) {
            throw new UserManagementException(ErrorCode.INVALID_USER_CATEGORY);
        }

        User user = new User(userName);
        user.setEmail(email);
        user.setPassword(password);
        user.setUserCategory(userCategory);
        user.setStatus(User.INACTIVE);
        user.setEnabled(true);

        long newUserId = 0L;
        newUserId = userDao.save(user);
        return newUserId;
    }

    public void updateUser(long id, String userName, String email, long userCategoryId) throws UserManagementException {
        if (userName == null || userName.isEmpty() || email == null || email.isEmpty()) {
            throw new UserManagementException(ErrorCode.EMPTY_REQUIRED_PARAMETERS);
        }

        validateEmail(email);

        User anotherUser = userDao.findUserByName(userName);
        if (anotherUser != null && anotherUser.getId() != id) {
            throw new UserManagementException(ErrorCode.DUPLICATE_USERNAME);
        }

        User user = userDao.findUserById(id);
        if (user == null) {
            throw new UserManagementException(ErrorCode.INVALID_USER);
        }

        UserCategory userCategory = userCategoryDao.findUserCategoryById(userCategoryId);
        if (userCategory == null) {
            throw new UserManagementException(ErrorCode.INVALID_USER_CATEGORY);
        }

        user.setName(userName);
        user.setUserCategory(userCategory);
        user.setEmail(email);

        userDao.update(user);
    }

    private void validateEmail(String email) throws UserManagementException {
        boolean valid = EmailValidator.getInstance().isValid(email);

        if (!valid) {
            throw new UserManagementException(ErrorCode.INVALID_EMAIL);
        }
    }

    public void updateUser(User user) {
        userDao.update(user);
    }

    public void changePassword(long userId, String oldPassword, String newPassword, String confirmPassword)
            throws UserManagementException {
        if (!newPassword.isEmpty() && !newPassword.equals(confirmPassword)) {
            throw new UserManagementException(ErrorCode.INVALID_CONFIRM_PASSWORD);
        }

        User user = userDao.findUserById(userId);

        if (user == null) {
            throw new UserManagementException(ErrorCode.INVALID_USER);
        }

        PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        boolean matches = passwordEncoder.matches(oldPassword, user.getPassword());
        if (!matches) {
            throw new UserManagementException(ErrorCode.INVALID_OLD_PASSWORD);
        }

        user.setPassword(newPassword); // this method encode the password using BCrypt
        userDao.update(user);
    }

    public void changePassword(long userId, String newPassword, String confirmPassword) throws UserManagementException {
        if (!newPassword.isEmpty() && !newPassword.equals(confirmPassword)) {
            throw new UserManagementException(ErrorCode.INVALID_CONFIRM_PASSWORD);
        }

        User user = userDao.findUserById(userId);

        if (user == null) {
            throw new UserManagementException(ErrorCode.INVALID_USER);
        }

        user.setPassword(newPassword); // this method encode the password using BCrypt
        userDao.update(user);
    }

    public void activateUser(User user) throws UserManagementException {

        if (user == null) {
            throw new UserManagementException(ErrorCode.INVALID_USER);
        }

        if (User.ACTIVE.equals(user.getStatus())) {
            throw new UserManagementException(ErrorCode.INVALID_USER_STATE);
        }

        user.setStatus(User.ACTIVE);

        updateUser(user);
    }

    public void deactivateUser(User user) throws UserManagementException {

        if (user == null) {
            throw new UserManagementException(ErrorCode.INVALID_USER);
        }

        if (User.INACTIVE.equals(user.getStatus())) {
            throw new UserManagementException(ErrorCode.INVALID_USER_STATE);
        }

        user.setStatus(User.INACTIVE);

        updateUser(user);
    }

    public User getUserById(long id) {
        return userDao.findUserById(id);
    }

    public List<User> getAllUsers() {
        return userDao.findAllUsers();
    }

    public List<User> getAllNonAdminUsers() {

        UserCategory adminCategory = userCategoryDao.findUserCategoryByName(UserCategory.ADMIN);
        return userDao.findNonAdminUsers(adminCategory);
    }

    public User getUserByName(String name) {
        return userDao.findUserByName(name);
    }

    public long createUser(String userName, String email, String phoneNo) throws UserManagementException {
        if (userName == null || userName.isEmpty()) {
            throw new UserManagementException(ErrorCode.EMPTY_REQUIRED_PARAMETERS);
        }

        validateEmail(email);

        User anotherUser = userDao.findUserByName(userName);
        if (anotherUser != null) {
            throw new UserManagementException(ErrorCode.DUPLICATE_USERNAME);
        }

        User user = new User(userName);
        user.setEmail(email);
        user.setPhoneNo(phoneNo);
//        user.setPassword(password);
//        user.setUserCategory(userCategory);
        user.setStatus(User.ACTIVE);
        user.setEnabled(true);

        long newUserId = 0L;
        newUserId = userDao.save(user);
        return newUserId;
    }
}
