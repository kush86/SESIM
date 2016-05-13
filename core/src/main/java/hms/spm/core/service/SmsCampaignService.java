package hms.spm.core.service;

import ucsc.mis.orm.model.SMSCampaign;

import java.util.List;

public interface SmsCampaignService {

    List<SMSCampaign> getAllSmsCampaigns();

    SMSCampaign getCampaignById(long id) throws CampaignManagementException;

    long createCampaign(SMSCampaign campaign) throws CampaignManagementException;

    void updateCampaign(SMSCampaign campaign) throws CampaignManagementException;

    void startCampaign(long l);
}
