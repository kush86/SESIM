package hms.spm.core.service;

import ucsc.mis.orm.model.Permission;

import java.util.List;

/**
 * Created by kusala on 9/30/15.
 */
public interface PermissionService {

    List<Permission> getAllPermissions();

    Permission getPermissionById(long id);
}
