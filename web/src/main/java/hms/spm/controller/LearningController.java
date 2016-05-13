package hms.spm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("learning-portal")
public class LearningController {

    @RequestMapping("/phished")
    public String phished(ModelMap modelMap) {
        return "email/notify";
    }
}
