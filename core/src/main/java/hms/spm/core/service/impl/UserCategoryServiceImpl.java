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

package hms.spm.core.service.impl;

import hms.spm.core.service.ErrorCode;
import hms.spm.core.service.UserCategoryService;
import hms.spm.core.service.UserManagementException;
import ucsc.mis.orm.dao.UserCategoryDao;
import ucsc.mis.orm.model.UserCategory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Service("UserCategoryService")
public class UserCategoryServiceImpl implements UserCategoryService {

    @Autowired
    UserCategoryDao userCategoryDao;

    public List<UserCategory> getAllUserCategories() {
        return userCategoryDao.findAllUserCategories();
    }

    public UserCategory getUserCategoryById(long id) {
        return userCategoryDao.findUserCategoryById(id);
    }

    public UserCategory getUserCategoryByname(String name) {
        return userCategoryDao.findUserCategoryByName(name);
    }

    public void updateUserCategory(UserCategory userCategory) throws UserManagementException {

        validateUserCategory(userCategory);

        userCategoryDao.update(userCategory);
    }


    public long createUserCategory(UserCategory userCategory) {

        validateUserCategory(userCategory);

        if (getUserCategoryByname(userCategory.getName()) != null){
            throw new UserManagementException(ErrorCode.DUPLICATE_USER_CATEGORY_NAME);
        }

        return userCategoryDao.save(userCategory);
    }

    public void delete(Long categoryId) {

        UserCategory userCategory = userCategoryDao.findUserCategoryById(categoryId);

        if (userCategory == null) {
            throw new UserManagementException(ErrorCode.INVALID_USER_CATEGORY);
        }

        userCategoryDao.delete(userCategory);
    }

    private boolean validateUserCategory(UserCategory userCategory) throws UserManagementException {

        if (userCategory == null) {
            throw new UserManagementException(ErrorCode.INVALID_USER_CATEGORY);
        }

        if (userCategory.getName() != null && userCategory.getName().isEmpty()) {
            throw new UserManagementException(ErrorCode.INVALID_USER_CATEGORY_NAME);
        }

        return true;
    }

}
