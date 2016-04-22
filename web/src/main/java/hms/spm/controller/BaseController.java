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

package hms.spm.controller;

import hms.spm.core.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Created by kusala on 9/24/15.
 */
@Controller
public class BaseController {

    protected static final String CSS_DANGER = "danger";
    protected static final String CSS_SUCCESS = "success";

    protected static final String ERROR_403 = "403";
    protected static final String ERROR_404 = "404";


    @Autowired
    UserService userService;

    protected ucsc.mis.orm.model.User getCurrentUser() {

        User authUser = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = authUser.getUsername(); //get logged in username

        return userService.getUserByName(username);
    }

    protected void setUImessageRedirectAttributeValues(RedirectAttributes redirectAttributes, String css,
                                                       String message) {

        redirectAttributes.addFlashAttribute("css", css);
        redirectAttributes.addFlashAttribute("msg", message);
    }

//    protected void setErrorCodeRedirectAttribureValue(RedirectAttributes redirectAttributes, String errorCode) {
//        redirectAttributes.addFlashAttribute("errorCode", errorCode);
//        redirectAttributes.addFlashAttribute("errorMessage", getErrorMessageFromErrorCode(errorCode));
//    }

    protected void setModelMapParametersForErrorCodes(ModelMap modelMap, String errorCode) {
        modelMap.put("errorCode", errorCode);
        modelMap.put("errorMessage", getErrorMessageFromErrorCode(errorCode));
    }


    private String getErrorMessageFromErrorCode(String errorCode) {
        String errorMessage = "";

        switch (errorCode) {
            case "403":
                errorMessage = "Access is denied";
                break;
            case "404":
                errorMessage = "Page not found";
                break;
            default:
                errorMessage = "Unexpected error occurred";
        }
        return errorMessage;
    }
}
