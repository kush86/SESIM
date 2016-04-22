package ucsc.mis.orm.dao;

import ucsc.mis.orm.model.User;
import ucsc.mis.orm.model.UserCategory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userDao")
public interface UserDao extends UniversalDao<User> {

    User findUserByName(String name);

    List<User> findAllUsers();

    User findUserById(long id);

    List<User> findUsersByType(UserCategory userCategory);

    List<User> findNonAdminUsers(UserCategory userCategory);
}
