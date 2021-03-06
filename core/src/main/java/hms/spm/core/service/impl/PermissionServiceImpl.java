package hms.spm.core.service.impl;

import hms.spm.core.service.PermissionService;
import ucsc.mis.orm.dao.PermissionDao;
import ucsc.mis.orm.model.Permission;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by kusala on 9/30/15.
 */
@Service("permissionService")
@Transactional
public class PermissionServiceImpl implements PermissionService {

    @Autowired
    PermissionDao permissionDao;

    public List<Permission> getAllPermissions() {
        return permissionDao.findAllPermissions();
    }

    public Permission getPermissionById(long id) {
        return permissionDao.findPermissionById(id);
    }
}
