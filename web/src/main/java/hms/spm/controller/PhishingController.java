package hms.spm.controller;

import hms.spm.core.service.CampaignManagementException;
import hms.spm.core.service.EmailCampaignService;
import hms.spm.core.service.SmsCampaignService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import ucsc.mis.orm.model.EmailCampaign;
import ucsc.mis.orm.model.SMSCampaign;
import ucsc.mis.service.EmailService;
import ucsc.mis.service.EmailTemplateService;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

/**
 * Created by kusala on 11/27/15.
 */
@Controller
@RequestMapping("se-controller")
public class PhishingController extends BaseController {
    @Autowired
    EmailService emailService;
    @Autowired
    EmailTemplateService emailTemplateService;
    @Autowired
    EmailCampaignService campaignService;
    @Autowired
    SmsCampaignService smsCampaignService;

    @RequestMapping("/")
    public String prepareEmail(ModelMap modelMap) {
        return "email/sendEmail";
    }

    @RequestMapping("/email/templates")
    public String viewEmailTemplates(ModelMap modelMap) {
        modelMap.put("templates", emailTemplateService.getAllTemplates());
        return "email/emailTemplateManager";
    }

    @RequestMapping("/add/template")
    public String addEmailTemplate(ModelMap modelMap) {
        return "email/phished";
    }

    @RequestMapping(value = "/upload")
    public String handleFileUpload(@RequestParam("file") MultipartFile file, @RequestParam("name") String name,
            RedirectAttributes redirectAttributes) {

        String message;
        String path = "";
        File newFile = null;
        if (!file.isEmpty()) {
            try {
                path = "core/src/main/resources/" + file.getOriginalFilename();
                newFile = new File(path);
                byte[] bytes = file.getBytes();
                BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(path)));
                stream.write(bytes);
                stream.close();
                message = "You successfully uploaded " + name + "!";
            } catch (Exception e) {
                message = "You failed to upload " + name + " => " + e.getMessage();
            }
        } else {
            message = "You failed to upload " + name + " because the file was empty.";
        }

        emailTemplateService.createEmailTemplate(name, file.getOriginalFilename());
        setUImessageRedirectAttributeValues(redirectAttributes, CSS_SUCCESS, message);
        return "redirect:/se-controller/email/templates";
    }

        /* Campaing management*/

    @RequestMapping(value = "/campaigns", method = RequestMethod.GET)
    public String viewCampaigns(ModelMap modelMap) {
        modelMap.put("campaigns", campaignService.getAllEmailCampaigns());

        return "campaign/campaignManager";
    }

    @RequestMapping(value = "/create/campaign", method = RequestMethod.GET)
    public String createAdminCampaign(@ModelAttribute EmailCampaign currentCampaign, ModelMap modelMap) {
        modelMap.put("currentCampaign", currentCampaign);

        modelMap.put("templates", emailTemplateService.getAllTemplates());

        return "campaign/createCampaign";
    }

    @RequestMapping(value = "/save/campaign", method = RequestMethod.POST)
    public String saveCampaign(@ModelAttribute("currentCampaign") EmailCampaign currentCampaign,
            RedirectAttributes redirectAttributes) {

        if (currentCampaign == null) {
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER, "Error while creating campaign");
            return "redirect:/se-controller/create/campaign";
        }
        campaignService.createCampaign(currentCampaign);

        setUImessageRedirectAttributeValues(redirectAttributes, CSS_SUCCESS, "Campaign created successfully");
        return "redirect:/se-controller/campaigns";
    }

    @RequestMapping(value = "/run/{id}")
    public String startCampaign(@PathVariable("id") String id, ModelMap modelMap,
            RedirectAttributes redirectAttributes) {

        try {
            campaignService.startCampaign(Long.parseLong(id));
        } catch (CampaignManagementException e) {
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
                    "Failed to start campaign: " + e.getErrorCode().getDetailedError());
        }

        setUImessageRedirectAttributeValues(redirectAttributes, CSS_SUCCESS, "Emails were sent successfully");
        return "redirect:/se-controller/campaigns";
    }


    /*SMS campaigns*/

    @RequestMapping(value = "/sms/campaigns", method = RequestMethod.GET)
    public String viewSMSCampaigns(ModelMap modelMap) {
        modelMap.put("campaigns", smsCampaignService.getAllSmsCampaigns());

        return "campaign/smsCampaignManager";
    }

    @RequestMapping(value = "/create/sms/campaign", method = RequestMethod.GET)
    public String createSmsCampaign(@ModelAttribute SMSCampaign currentCampaign, ModelMap modelMap) {
        modelMap.put("currentCampaign", currentCampaign);

       return "campaign/createSmsCampaign";
    }

    @RequestMapping(value = "/save/sms/campaign", method = RequestMethod.POST)
    public String saveSmsCampaign(@ModelAttribute("currentCampaign") SMSCampaign currentCampaign,
            RedirectAttributes redirectAttributes) {

        if (currentCampaign == null) {
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER, "Error while creating campaign");
            return "redirect:/se-controller/create/sms/campaign";
        }
        smsCampaignService.createCampaign(currentCampaign);

        setUImessageRedirectAttributeValues(redirectAttributes, CSS_SUCCESS, "Campaign created successfully");
        return "redirect:/se-controller/sms/campaigns";
    }

    @RequestMapping(value = "/run/sms/{id}")
    public String startSmsCampaign(@PathVariable("id") String id, ModelMap modelMap,
            RedirectAttributes redirectAttributes) {

        try {
            smsCampaignService.startCampaign(Long.parseLong(id));
        } catch (CampaignManagementException e) {
            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
                    "Failed to start campaign: " + e.getErrorCode().getDetailedError());
        }

        setUImessageRedirectAttributeValues(redirectAttributes, CSS_SUCCESS, "Emails were sent successfully");
        return "redirect:/se-controller/sms/campaigns";
    }

    /* phishing */


    @RequestMapping("/phished")
    public String phished(ModelMap modelMap) {
        return "email/phished";
    }


    @RequestMapping("/phished/{name}")
    public String phished1(@PathVariable("name") String name, ModelMap modelMap) {
        System.out.println(name);
        return "email/phished";
    }

    @RequestMapping("/phishing")
    public String aboutPhishing(ModelMap modelMap) {
        return "email/aboutPhishing";
    }
}
