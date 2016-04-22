package ucsc.mis.orm.dao;

import ucsc.mis.orm.model.UserCategory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userCategoryDao")
public interface UserCategoryDao extends UniversalDao {

    List<UserCategory> findAllUserCategories();

    UserCategory findUserCategoryById(long id);

    UserCategory findUserCategoryByName(String name);
}
