package hms.spm.core.service;

import ucsc.mis.orm.model.EmailCampaign;

import java.util.List;

public interface EmailCampaignService {

    List<EmailCampaign> getAllEmailCampaigns();

    EmailCampaign getCampaignById(long id) throws CampaignManagementException;

    long createCampaign(EmailCampaign campaign) throws CampaignManagementException;

    void updateCampaign(EmailCampaign campaign) throws CampaignManagementException;

    void startCampaign(long l);
}
