/*
 *  (C) Copyright 2015 hSenid Mobile Solutions (Pvt) Limited.
 *  All Rights Reserved.
 * <p/>
 * These materials are unpublished, proprietary, confidential source code of
 * hSenid Mobile Solutions (Pvt) Limited and constitute a TRADE SECRET
 * of hSenid Mobile Solutions (Pvt) Limited.
 * <p/>
 * hSenid Mobile Solutions (Pvt) Limited retains all title to and intellectual
 * property rights in these materials.
 *
 */

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
