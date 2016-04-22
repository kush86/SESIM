package hms.spm.controller;

import hms.spm.core.service.ErrorCode;
import hms.spm.core.service.PermissionService;
import hms.spm.core.service.UserCategoryService;
import hms.spm.core.service.UserManagementException;
import hms.spm.core.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import ucsc.mis.orm.model.Permission;
import ucsc.mis.orm.model.User;
import ucsc.mis.orm.model.UserCategory;

import java.util.List;

@Controller
@RequestMapping("users-manager")
public class UserManagementController extends BaseController {

    private static final Logger logger = LoggerFactory.getLogger(UserManagementController.class);

    @Autowired
    private UserCategoryService userCategoryService;
    @Autowired
    private UserService userService;
    @Autowired
    private PermissionService permissionService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String viewUsers(ModelMap modelMap) {

        modelMap.put("users", userService.getAllUsers());
        modelMap.put("userCategories", userCategoryService.getAllUserCategories());

        return "user/usersManager";
    }

    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String viewProfile(ModelMap modelMap) {

        User currentUser = getCurrentUser();

        modelMap.put("currentUser", currentUser);

        return "user/userProfileModal";
    }

    //    @RequestMapping(value = "/create/user", method = RequestMethod.POST)
    //    public String addUser(@RequestParam("user_name") String userName, @RequestParam("email") String email,
    //                          @RequestParam("password") String password,
    //                          @RequestParam("confirm_password") String confirmPassword,
    //                          @RequestParam("user_category") long userCategoryId,
    //                          final RedirectAttributes redirectAttributes) {
    //
    //        try {
    //            userService.createUser(userName, email,password, confirmPassword, userCategoryId);
    //            setUImessageRedirectAttributeValues(redirectAttributes, CSS_SUCCESS, "User created successfully");
    //
    //        } catch (UserManagementException e) {
    //            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
    //                                                "User creation failed: " + e.getErrorCode().getDetailedError());
    //            return "redirect:/users-manager/";
    //        }
    //
    //        return "redirect:/users-manager/";
    //    }

    @RequestMapping(value = "/create/user", method = RequestMethod.POST)
    public String addUser(@RequestParam("user_name") String userName, @RequestParam("email") String email,
            @RequestParam("msisdn") String phoneNo, final RedirectAttributes redirectAttributes) {

        try {
            userService.createUser(userName, email, phoneNo);
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_SUCCESS, "User created successfully");

        } catch (UserManagementException e) {
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
                    "User creation failed: " + e.getErrorCode().getDetailedError());
            return "redirect:/users-manager/";
        }

        return "redirect:/users-manager/";
    }

    @RequestMapping(value = "/update/user", method = RequestMethod.POST)
    public String updateUser(@RequestParam("user_id") long id, @RequestParam("user_name") String name,
            @RequestParam("e_mail") String email, @RequestParam("user_category") long userCategoryId,
            final RedirectAttributes redirectAttributes) {

        try {
            userService.updateUser(id, name, email, userCategoryId);
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_SUCCESS, "User updated successfully");

        } catch (UserManagementException e) {
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
                    "User update failed: " + e.getErrorCode().getDetailedError());
        }

        return "redirect:/users-manager/";
    }

    @RequestMapping(value = "/change/password2")
    public String changeUserPassword2(@RequestParam("currentUserId") String userId,
            @RequestParam("oldPassword") String oldPassword, @RequestParam("newPassword") String newPassord,
            @RequestParam("confirmPassword") String confirmpassword, RedirectAttributes redirectAttributes) {

        logger.debug("Change User password");

        try {
            userService.changePassword(new Long(userId.trim()), oldPassword, newPassord, confirmpassword);
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_SUCCESS, "User Password updated successfully");
            return "success";

        } catch (NumberFormatException e) {
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
                    "User Password update failed: Invalid user");
            return "error";

        } catch (UserManagementException ume) {
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
                    "User Password update failed" + ume.getErrorCode().getDetailedError());
            return "error";
        }

    }

    @RequestMapping(value = "/change/password")
    public String changeUserPassword(@RequestParam("currentUserId") String userId,
            @RequestParam("newPassword") String newPassord, @RequestParam("confirmPassword") String confirmpassword,
            RedirectAttributes redirectAttributes) {

        logger.debug("Change User password");

        try {
            userService.changePassword(new Long(userId.trim()), newPassord, confirmpassword);
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_SUCCESS, "User Password updated successfully");

        } catch (NumberFormatException e) {
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
                    "User Password update failed: Invalid user");

        } catch (UserManagementException ume) {
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
                    "User Password update failed" + ume.getErrorCode().getDetailedError());

        }
        return "redirect:/users-manager/";
    }


    @RequestMapping(value = "/activate/user/{id}")
    public String activateUser(@PathVariable("id") String userId, ModelMap modelMap,
            RedirectAttributes redirectAttributes) {

        try {
            User selectedUser = userService.getUserById(new Long(userId));
            userService.activateUser(selectedUser);

            setUImessageRedirectAttributeValues(redirectAttributes, CSS_SUCCESS, "User activation succeeded");

        } catch (NumberFormatException e) {
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER, "User activation failed: Invalid User");

        } catch (UserManagementException e) {
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
                    "User activation failed: " + e.getErrorCode().getDetailedError());
        }

        return "redirect:/users-manager/";
    }

    @RequestMapping(value = "/deactivate/user/{id}")
    public String deactivateUser(@PathVariable("id") String userId, ModelMap modelMap,
            RedirectAttributes redirectAttributes) {

        try {
            User selectedUser = userService.getUserById(new Long(userId));
            userService.deactivateUser(selectedUser);

            setUImessageRedirectAttributeValues(redirectAttributes, CSS_SUCCESS, "User de-activation succeeded");

        } catch (NumberFormatException e) {
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER, "User activation failed: Invalid User");

        } catch (UserManagementException e) {
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
                    "User activation failed: " + e.getErrorCode().getDetailedError());
        }

        return "redirect:/users-manager/";
    }


    @RequestMapping(value = "/categories", method = RequestMethod.GET)
    public String viewUserCategories(ModelMap modelMap) {

        modelMap.put("userCategories", userCategoryService.getAllUserCategories());
        return "user/userTypesManager";
    }

    @RequestMapping(value = "/edit/category/{id}", method = RequestMethod.GET)
    public String editUserCategory(@PathVariable("id") String id, ModelMap modelMap) {
        logger.debug("Edit user category");

        UserCategory selectedCategory = userCategoryService.getUserCategoryById(new Long(id));
        modelMap.put("currentCategory", selectedCategory);

        List<Permission> permissionList = permissionService.getAllPermissions();
        modelMap.put("permissions", permissionList);

        return "user/editUserTypeModal";
    }

    @RequestMapping(value = "/add/category/", method = RequestMethod.GET)
    public String addUserCategory(@ModelAttribute UserCategory currentCategory, ModelMap modelMap) {
        logger.info("Add new user category");

        modelMap.put("currentCategory", currentCategory);

        List<Permission> permissionList = permissionService.getAllPermissions();
        modelMap.put("permissions", permissionList);

        return "user/editUserTypeModal";
    }

    @RequestMapping(value = "/update/category", method = RequestMethod.POST)
    public String updateUserCategory(@ModelAttribute("currentCategory") UserCategory currentCategory, ModelMap modelMap,
            RedirectAttributes redirectAttributes) {
        logger.debug("Update User category");

        String errorPrefix = "";
        try {
            if (currentCategory.getId() > 0) {
                errorPrefix = "User Type update failed: ";
                userCategoryService.updateUserCategory(currentCategory);
                setUImessageRedirectAttributeValues(redirectAttributes, CSS_SUCCESS, "User Type updated successfully");

            } else {
                errorPrefix = "User Type creation failed: ";
                userCategoryService.createUserCategory(currentCategory);
                setUImessageRedirectAttributeValues(redirectAttributes, CSS_SUCCESS, "User Type created successfully");
            }

        } catch (UserManagementException e) {
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
                    errorPrefix + e.getErrorCode().getDetailedError());

        } catch (DataIntegrityViolationException e) {
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
                    errorPrefix + ErrorCode.DUPLICATE_USER_CATEGORY_NAME.getDetailedError());
        }

        return "redirect:/users-manager/categories";
    }

    @RequestMapping(value = "/delete/category")
    public String deleteCategory(@RequestParam("category-id") String categoryId, ModelMap modelMap,
            RedirectAttributes redirectAttributes) {

        try {
            userCategoryService.delete(new Long(categoryId));
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_SUCCESS, "User Type deleted successfully");

        } catch (NumberFormatException e) {
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
                    "User Type delete failed: Invalid User Type");
        }

        return "redirect:/users-manager/";
    }
}
