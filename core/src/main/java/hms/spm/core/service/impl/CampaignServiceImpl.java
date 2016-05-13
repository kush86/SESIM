package hms.spm.core.service.impl;

import hms.spm.core.service.CampaignManagementException;
import hms.spm.core.service.EmailCampaignService;
import hms.spm.core.service.ErrorCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ucsc.mis.orm.dao.CampaignDao;
import ucsc.mis.orm.model.EmailCampaign;
import ucsc.mis.service.EmailService;

import java.util.List;

@Service("campaignService")
@Transactional
public class CampaignServiceImpl implements EmailCampaignService {

    @Autowired private CampaignDao campaignDao;
    @Autowired
    private EmailService emailService;

    public List<EmailCampaign> getAllEmailCampaigns() {
        return campaignDao.findAllCampaigns();
    }

    public EmailCampaign getCampaignById(long id) {
        EmailCampaign campaign = campaignDao.findCampaignById(id);

        if (campaign == null) {
            throw new CampaignManagementException(ErrorCode.CAMPAIGN_NOT_FOUND);
        }
        return campaign;
    }

    public long createCampaign(EmailCampaign campaign) throws CampaignManagementException {

        return campaignDao.save(campaign);
    }

    public void updateCampaign(EmailCampaign campaign) throws CampaignManagementException {


        campaignDao.merge(campaign);
    }

    public void startCampaign(long id) throws CampaignManagementException {

        EmailCampaign campaign = getCampaignById(id);
        emailService.sendEmail(campaign);

    }
}
