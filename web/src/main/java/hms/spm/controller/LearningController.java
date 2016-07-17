package hms.spm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import ucsc.mis.service.ResponseService;

import java.util.Date;

@Controller
@RequestMapping("learning-portal")
public class LearningController {
    @Autowired
    ResponseService responseService;

    @RequestMapping("/phished/{user}/{campaign}")
    public String phished(@PathVariable("user") String userId, @PathVariable("campaign") String campaignId, ModelMap modelMap) {
        responseService.createResponse(userId, campaignId, new Date());
        return "portal/notify";
    }

    @RequestMapping("/phished")
    public String phished2(ModelMap modelMap) {
        //TODO remove this from templates
        return "portal/notify";
    }
}
