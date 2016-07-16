package ucsc.mis.orm.dao.impl;

import org.hibernate.FetchMode;
import org.hibernate.Session;
import org.hibernate.criterion.CriteriaSpecification;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import ucsc.mis.orm.dao.UserDao;
import ucsc.mis.orm.model.User;
import ucsc.mis.orm.model.UserCategory;

import java.util.List;

@Repository("userDao")
public class UserDaoImpl extends UniversalDaoImpl<User> implements UserDao {

    public User findUserById(long id) {
        Session session = getCurrentSession();

        return (User) session.createCriteria(User.class).add(Restrictions.eq("id", id)).uniqueResult();
    }

    public User findUserByName(String name) {
        Session session = getCurrentSession();

        return (User) session.createCriteria(User.class).add(Restrictions.eq("name", name)).uniqueResult();
    }

    public List<User> findAllUsers() {
        Session session = getCurrentSession();

        List<User> result = session.createCriteria(User.class).setResultTransformer(
                CriteriaSpecification.DISTINCT_ROOT_ENTITY).setFetchMode("UserCategory", FetchMode.JOIN).list();
        return result;
    }

    public List<User> findUsersByType(UserCategory userCategory) {
        Session session = getCurrentSession();

        List<User> result = session.createCriteria(User.class).setResultTransformer(
                CriteriaSpecification.DISTINCT_ROOT_ENTITY).setFetchMode("UserCategory", FetchMode.JOIN).add(
                Restrictions.eq("userCategory", userCategory)).list();
        return result;
    }

    public List<User> findNonAdminUsers(UserCategory userCategory) {
        Session session = getCurrentSession();


        return session.createCriteria(User.class).add(Restrictions.isNull("userCategory"))
                .add(Restrictions.eq("status", "ACTIVE")).list();

//        Query query = session.createQuery("FROM User WHERE userCategory <>:admin");
//        query.setParameter("admin", userCategory);
//
//        return query.list();
    }

    public User findUserByEmail(String email) {
        Session session = getCurrentSession();

        return (User) session.createCriteria(User.class).add(Restrictions.eq("email", email)).uniqueResult();
    }
}
