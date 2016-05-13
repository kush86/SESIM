package ucsc.mis.orm.dao.impl;

import ucsc.mis.orm.dao.PermissionDao;
import ucsc.mis.orm.model.Permission;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by kusala on 9/30/15.
 */
@Repository("permissionDao")
public class PermissionDaoImpl extends UniversalDaoImpl implements PermissionDao {

    public List<Permission> findAllPermissions() {
        Session session = getCurrentSession();

        return session.createCriteria(Permission.class).list();
    }

    public Permission findPermissionById(long id) {
        Session session = getCurrentSession();

        return (Permission) session.createCriteria(Permission.class)
                .add(Restrictions.eq("id", id))
                .uniqueResult();

    }
}
