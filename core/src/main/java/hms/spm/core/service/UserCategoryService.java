package hms.spm.core.service;

import ucsc.mis.orm.model.UserCategory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Service("UserCategoryService")
public interface UserCategoryService {

    List<UserCategory> getAllUserCategories();

    UserCategory getUserCategoryById(long id);

    UserCategory getUserCategoryByname(String name);

    void updateUserCategory(UserCategory userCategory) throws UserManagementException;

    long createUserCategory(UserCategory userCategory) throws UserManagementException;

    void delete(Long aLong);

}
