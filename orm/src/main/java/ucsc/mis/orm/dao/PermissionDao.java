package ucsc.mis.orm.dao;

import ucsc.mis.orm.model.Permission;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by kusala on 9/30/15.
 */
@Repository("permissionDao")
public interface PermissionDao extends UniversalDao {

    List<Permission> findAllPermissions();

    Permission findPermissionById(long id);
}
