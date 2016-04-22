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
