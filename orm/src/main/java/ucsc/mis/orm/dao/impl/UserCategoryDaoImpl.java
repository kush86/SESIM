package ucsc.mis.orm.dao.impl;

import ucsc.mis.orm.dao.UserCategoryDao;
import ucsc.mis.orm.model.UserCategory;
import org.hibernate.FetchMode;
import org.hibernate.Session;
import org.hibernate.criterion.CriteriaSpecification;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userCategoryDao")
public class UserCategoryDaoImpl extends UniversalDaoImpl implements UserCategoryDao {

    public List<UserCategory> findAllUserCategories() {
        Session session = getCurrentSession();

        List<UserCategory> result = session.createCriteria(UserCategory.class)
                .setResultTransformer(CriteriaSpecification.DISTINCT_ROOT_ENTITY)
                .setFetchMode("permissionList", FetchMode.JOIN)
                .list();
        return result;
    }

    public UserCategory findUserCategoryById(long id) {
        Session session = getCurrentSession();

        return (UserCategory) session.createCriteria(UserCategory.class)
                .add(Restrictions.eq("id", id)).uniqueResult();
    }

    public UserCategory findUserCategoryByName(String name) {
        Session session = getCurrentSession();

        return (UserCategory) session.createCriteria(UserCategory.class)
                .add(Restrictions.eq("name", name)).uniqueResult();
    }
}
