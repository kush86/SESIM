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

package hms.spm.converter;

import hms.spm.core.service.PermissionService;
import ucsc.mis.orm.model.Permission;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

/**
 * Created by kusala on 10/1/15.
 */

/**
 * Custom converter to convert the String type permission id' to Permission object.
 * Used when editing the User Categories.
 */
public class StringToPermissionConverter implements Converter<String, Permission> {
    @Autowired
   private PermissionService permissionService;

    @Override
    public Permission convert(String permissionId) {
        return permissionService.getPermissionById(new Long(permissionId));
    }
}
