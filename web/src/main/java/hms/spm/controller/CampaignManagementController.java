//package hms.spm.controller;
//
//import hms.spm.core.service.*;
//import hms.spm.orm.model.*;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.*;
//import org.springframework.web.servlet.mvc.support.RedirectAttributes;
//
//import java.text.ParseException;
//import java.text.SimpleDateFormat;
//import java.util.*;
//
//@Controller
//@RequestMapping("campaign-manager")
//public class CampaignManagementController extends BaseController {
//
//    private static final Logger logger = LoggerFactory.getLogger(CampaignManagementController.class);
//
//    @Autowired
//    private CampaignService campaignService;
//
//    @Autowired
//    private UserService userService;
//
//    @RequestMapping(value = "/", method = RequestMethod.GET)
//    public String viewCampaigns(ModelMap modelMap) {
//
//        User currentUser = getCurrentUser();
//
//        if (UserCategory.ADMIN.equals(currentUser.getUserCategory().getName())) {
//            modelMap.put("admin", true);
//            modelMap.put("campaigns", campaignService.getAllActiveCampaigns());
//        } else {
//            modelMap.put("admin", false);
//            modelMap.put("campaigns", campaignService.getAllActiveCampaignsOfUser(currentUser));
//        }
//        modelMap.put("currentUser", getCurrentUser());
//
//        return "campaign/campaignManager";
//    }
//
//    @RequestMapping(value = "/admin-campaign/create", method = RequestMethod.GET)
//    public String createAdminCampaign(@ModelAttribute Campaign currentCampaign, ModelMap modelMap) {
//
//        modelMap.put("currentCampaign", currentCampaign);
//        modelMap.put("campaignTypes", CampaignType.values());
//
//        return "campaign/createCampaignByAdmin";
//    }
//
//    @RequestMapping(value = "/user-campaign/create", method = RequestMethod.GET)
//    public String createUserCampaign(@ModelAttribute Campaign currentCampaign, ModelMap modelMap) {
//
//
//        modelMap.put("currentCampaign", currentCampaign);
//        modelMap.put("campaignTypes", CampaignType.values());
//
//        User currentUser = getCurrentUser();
//
//        List<User> userList = new ArrayList<>();
//        userList.add(currentUser);
//        modelMap.put("users", userList);
//
//        modelMap.put("privateCodes", currentUser.getPrivateShortCodes());
//        modelMap.put("sharedCodes", currentUser.getSharedShortCodes());
//
//        return "campaign/editCampaignByUser";
//    }
//
//    //    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
//    //    public String editCampaign(@PathVariable("id") String id, ModelMap modelMap,
//    //            RedirectAttributes redirectAttributes) {
//    //
//    //
//    //        Campaign currentCampaign = campaignService.getCampaignById(new Long(id));
//    //        logger.debug("Edit campaign with id [" + currentCampaign.getId() + "]");
//    //
//    //        User campaignUser = currentCampaign.getUser();
//    //
//    //        User currentUser = getCurrentUser();
//    //
//    //        if (!isCurrentUserAuthorizedForCampaign(currentUser, campaignUser, modelMap)) {
//    //            return "error";
//    //        }
//    //
//    //        List<User> userList = new ArrayList<>();
//    //        userList.add(campaignUser);
//    //
//    //
//    //        modelMap.put("currentCampaign", currentCampaign);
//    //        modelMap.put("users", userList);
//    //        modelMap.put("campaignTypes", CampaignType.values());
//    //
//    //        modelMap.put("privateCodes", campaignUser.getPrivateShortCodes());
//    //        modelMap.put("sharedCodes", campaignUser.getSharedShortCodes());
//    //
//    //        modelMap.put("daterange", prepareDateRangeString(currentCampaign.getStartTime(), currentCampaign
//    // .getEndTime()));
//    //
//    //        return "campaign/editCampaignByUser";
//    //    }
//
//    @RequestMapping(value = "/user-campaign/save", method = RequestMethod.POST)
//    public String saveCampaign(@ModelAttribute("currentCampaign") Campaign currentCampaign,
//            @RequestParam("daterange") String dateRange, RedirectAttributes redirectAttributes) {
//
//        if (currentCampaign == null) {
//            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER, "Error while creating campaign");
//            return "redirect:/campaign-manager/user-campaign/create";
//        }
//
//        if (currentCampaign.getId() > 0) {
//            updateCampaign(currentCampaign, dateRange, redirectAttributes);
//        } else {
//            createCampaign(currentCampaign, dateRange, redirectAttributes);
//        }
//
//        return "redirect:/campaign-manager/";
//    }
//
//    private String createCampaign(Campaign currentCampaign, String dateRange, RedirectAttributes redirectAttributes) {
//
//        String errorPrefix = "";
//        try {
//            errorPrefix = "Failed to create campaign: ";
//
//            if (dateRange == null || dateRange.isEmpty()) {
//                setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
//                        "Campaign running period not specified");
//                return "redirect:/campaign-manager/user-campaign/create";
//            }
//
//            List<Date> dates = extractDatesFromRange(dateRange);
//
//            if (dates != null && dates.size() == 2) {
//                currentCampaign.setStartTime(dates.get(0));
//                currentCampaign.setEndTime(dates.get(1));
//            }
//
//            campaignService.createCampaign(currentCampaign);
//            setUImessageRedirectAttributeValues(redirectAttributes, CSS_SUCCESS, "Campaign created " + "successfully");
//
//        } catch (CampaignManagementException e) {
//            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
//                    errorPrefix + e.getErrorCode().getDetailedError());
//        }
//
//        return "redirect:/campaign-manager/user-campaign/create";
//    }
//
//    //    private String updateCampaign(Campaign currentCampaign, String dateRange, RedirectAttributes
//    // redirectAttributes) {
//    //
//    //        String errorPrefix = "";
//    //        try {
//    //            errorPrefix = "Failed to update campaign: ";
//    //
//    //            if (dateRange == null || dateRange.isEmpty()) {
//    //                setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
//    //                        "Campaign running period not specified");
//    //                return "redirect:/campaign-manager/edit/" + currentCampaign.getId();
//    //            }
//    //
//    //            List<Date> dates = extractDatesFromRange(dateRange);
//    //
//    //            if (dates != null && dates.size() == 2) {
//    //                currentCampaign.setStartTime(dates.get(0));
//    //                currentCampaign.setEndTime(dates.get(1));
//    //            }
//    //
//    //            campaignService.updateCampaign(currentCampaign);
//    //            setUImessageRedirectAttributeValues(redirectAttributes, CSS_SUCCESS, "Campaign updated " +
//    // "successfully");
//    //
//    //        } catch (CampaignManagementException e) {
//    //            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
//    //                    errorPrefix + e.getErrorCode().getDetailedError());
//    //        }
//    //
//    //        return "redirect:/campaign-manager/edit/" + currentCampaign.getId();
//    //    }
//
//    @RequestMapping(value = "/admin-campaign/save", method = RequestMethod.POST)
//    public String saveAdminCampaign(@ModelAttribute Campaign currentCampaign,
//            @RequestParam("daterange") String dateRange, ModelMap modelMap, RedirectAttributes redirectAttributes) {
//
//        if (currentCampaign == null) {
//            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER, "Error while creating campaign");
//            return "redirect:/campaign-manager/admin-campaign/create";
//        }
//
//        if (dateRange == null || dateRange.isEmpty()) {
//            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
//                    "Campaign running period not specified");
//            return "redirect:/campaign-manager/admin-campaign/create";
//        }
//
//        List<Date> dates = extractDatesFromRange(dateRange);
//
//        if (dates != null && dates.size() == 2) {
//            currentCampaign.setStartTime(dates.get(0));
//            currentCampaign.setEndTime(dates.get(1));
//        }
//
//        try {
//            campaignService.createCampaign(currentCampaign);
//            setUImessageRedirectAttributeValues(redirectAttributes, CSS_SUCCESS, "Campaign created successfully");
//        } catch (CampaignManagementException e) {
//
//            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
//                    "Failed to create campaign: " + e.getErrorCode().getDetailedError());
//            return "redirect:/campaign-manager/admin-campaign/create";
//        }
//
//        return "redirect:/campaign-manager/";
//    }
//
//
//    @RequestMapping(value = "/start/{id}")
//    public String startCampaign(@PathVariable("id") String id, ModelMap modelMap,
//            RedirectAttributes redirectAttributes) {
//
//        try {
//            campaignService.startCampaign(Long.parseLong(id));
//        } catch (CampaignManagementException e) {
//            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
//                    "Failed to start campaign: " + e.getErrorCode().getDetailedError());
//        }
//
//        return "redirect:/campaign-manager/";
//    }
//
//    @RequestMapping(value = "/pause/{id}")
//    public String pauseCampaign(@PathVariable("id") String id, ModelMap modelMap,
//            RedirectAttributes redirectAttributes) {
//
//        try {
//            campaignService.pauseCampaign(Long.parseLong(id));
//        } catch (CampaignManagementException e) {
//            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
//                    "Failed to pause campaign: " + e.getErrorCode().getDetailedError());
//        }
//
//        return "redirect:/campaign-manager/";
//    }
//
//    @RequestMapping(value = "/stop/{id}")
//    public String stopCampaign(@PathVariable("id") String id, ModelMap modelMap,
//            RedirectAttributes redirectAttributes) {
//
//        try {
//            campaignService.stopCampaign(new Long(id));
//        } catch (CampaignManagementException e) {
//            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
//                    "Failed to stop campaign: " + e.getErrorCode().getDetailedError());
//        }
//
//        return "redirect:/campaign-manager/";
//    }
//
//    @RequestMapping(value = "/remove/{id}")
//    public String removeCampaign(@PathVariable("id") String id, ModelMap modelMap,
//            RedirectAttributes redirectAttributes) {
//
//        try {
//            campaignService.removeCampaign(new Long(id));
//        } catch (CampaignManagementException e) {
//            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
//                    "Failed to remove campaign: " + e.getErrorCode().getDetailedError());
//        }
//
//        return "redirect:/campaign-manager/";
//    }
//
//    @RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
//    public String viewCampaignSummary(@PathVariable("id") String id, ModelMap modelMap,
//            RedirectAttributes redirectAttributes) {
//
//        Campaign selectedCampaign = campaignService.getCampaignById(new Long(id));
//
//        modelMap.put("selectedCampaign", selectedCampaign);
//
//        return "campaign/campaignSummaryModal";
//    }
//
//    @RequestMapping(value = "/responses/{id}", method = RequestMethod.GET)
//    public String viewCampaignResponses(@PathVariable("id") String id, ModelMap modelMap,
//            RedirectAttributes redirectAttributes) {
//
//        Campaign selectedCampaign = campaignService.getCampaignById(new Long(id));
//        modelMap.put("selectedCampaign", selectedCampaign);
//
//        List<CampaignResponse> campaignResponses = campaignResponseService.getAllResponsesofCampaign(selectedCampaign);
//        modelMap.put("campaignResponses", campaignResponses);
//
//        return "campaign/viewCampaignMessages";
//    }
//
//    @RequestMapping(value = "/remove/{campaignId}/{responseId}", method = RequestMethod.GET)
//    public String removeCampaignResponse(@PathVariable("campaignId") String campaignId,
//            @PathVariable("responseId") String responseId, ModelMap modelMap, RedirectAttributes redirectAttributes) {
//
//        campaignResponseService.remove(new Long(responseId));
//        setUImessageRedirectAttributeValues(redirectAttributes, CSS_SUCCESS, "Campaign Response successfully deleted");
//
//        return "redirect:/campaign-manager/responses/" + campaignId;
//    }
//
//    @RequestMapping(value = "/search", method = RequestMethod.POST)
//    public String searchCampaignResponsesWithDateRange(@RequestParam("campaign-id") String campaignId,
//            @RequestParam("daterange") String dateRange, ModelMap modelMap, RedirectAttributes redirectAttributes) {
//
//        Campaign campaign = campaignService.getCampaignById(new Long(campaignId));
//        List<CampaignResponse> campaignResponses = Collections.emptyList();
//
//        modelMap.put("selectedCampaign", campaign);
//        modelMap.put("campaignResponses", campaignResponses);
//
//
//        if (dateRange == null || dateRange.isEmpty()) {
//            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
//                    "Failed to search campaign responses: Date range not specified");
//            return "campaign/viewCampaignMessages";
//        }
//
//        modelMap.put("daterange", dateRange);
//        List<Date> dates = extractDatesFromRange(dateRange);
//
//        try {
//            campaignResponses = campaignResponseService.getResponsesOfCampaignWithinRange(campaign, dates.get(0),
//                    dates.get(1));
//            modelMap.put("campaignResponses", campaignResponses);
//        } catch (CampaignManagementException e) {
//            setUImessageRedirectAttributeValues(redirectAttributes, CSS_DANGER,
//                    "Error while searching campaign responses: " + e.getErrorCode().getDetailedError());
//        }
//
//        return "campaign/viewCampaignMessages";
//    }
//
//    /**
//     * Populates system users when the crete campaign page is loaded.
//     * Called through a java script function.
//     *
//     * @return Set of users mapped with id and name.
//     */
//    @RequestMapping(value = "/users", method = RequestMethod.GET, produces = "application/json")
//    public
//    @ResponseBody
//    Set<Map<String, String>> getUsers() {
//
//        User currentUser = getCurrentUser();
//
//        Set<Map<String, String>> usersMap = new HashSet<>();
//
//        if (UserCategory.ADMIN.equals(currentUser.getUserCategory().getName())) {
//
//            List<User> userList = userService.getAllNonAdminUsers();
//
//            for (User user : userList) {
//                Map<String, String> userDetails = new HashMap<>();
//                userDetails.put("id", Long.toString(user.getId()));
//                userDetails.put("name", user.getName());
//                usersMap.add(userDetails);
//            }
//
//        } else {
//            Map<String, String> userDetails = new HashMap<>();
//            userDetails.put("id", Long.toString(currentUser.getId()));
//            userDetails.put("name", currentUser.getName());
//            usersMap.add(userDetails);
//        }
//
//        return usersMap;
//    }
//
//    /**
//     * Populates short codes of the selected user when user is selected in create campaign page.
//     * Called thtough a java script function
//     *
//     * @param ownerId owner of the campaign
//     * @return Set of short-codes
//     */
//    @RequestMapping(value = "/short-codes", method = RequestMethod.GET, produces = "application/json")
//    public
//    @ResponseBody
//    Map<String, Set<String>> getShortCodesForUser(@RequestParam(value = "ownerId", required = true) String ownerId) {
//
//        User user = userService.getUserById(Long.parseLong(ownerId));
//
//        Set<String> privateShortCodeSet = new HashSet<>();
//
//        for (ShortCode shortCode : user.getPrivateShortCodes()) {
//            if (ShortCode.ENABLED.equals(shortCode.getStatus())) {
//                privateShortCodeSet.add(shortCode.getCode());
//            }
//        }
//
//        Set<String> sharedShortCodeSet = new HashSet<>();
//
//        for (ShortCode shortCode : user.getSharedShortCodes()) {
//            if (ShortCode.ENABLED.equals(shortCode.getStatus())) {
//                sharedShortCodeSet.add(shortCode.getCode());
//            }
//        }
//
//        Map<String, Set<String>> shortCodeMap = new HashMap<>();
//
//        shortCodeMap.put("private", privateShortCodeSet);
//        shortCodeMap.put("shared", sharedShortCodeSet);
//
//        return shortCodeMap;
//    }
//
//    private Date convertStringToDate(String dateString) {
//
//        SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy hh:mm a");
//
//        try {
//            return formatter.parse(dateString);
//        } catch (ParseException e) {
//            return null;
//        }
//    }
//
//    private List<Date> extractDatesFromRange(String dateRange) {
//        List<Date> dates = new ArrayList<>(2);
//
//        for (String retval : dateRange.split("-", 2)) {
//
//            Date date = convertStringToDate(retval.trim());
//            dates.add(date);
//        }
//        return dates;
//    }
//
//    private String prepareDateRangeString(Date start, Date end) {
//        SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy hh:mm a");
//
//        String startString = formatter.format(start);
//        String endString = formatter.format(end);
//
//        return startString + " - " + endString;
//    }
//
//    private boolean isCurrentUserAuthorizedForCampaign(User currentUser, User campaignUser, ModelMap modelMap) {
//
//        if (!currentUser.equals(campaignUser) && !currentUser.getUserCategory().getName().equals(UserCategory.ADMIN)) {
//
//            setModelMapParametersForErrorCodes(modelMap, ERROR_403);
//
//            logger.debug("user with id [" + currentUser.getId() + "] is not authorized to edit campaign");
//            return false;
//        }
//        return true;
//    }
//
//}
