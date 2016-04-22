package hms.spm.core.service.impl;

import hms.spm.core.service.CampaignManagementException;
import hms.spm.core.service.ErrorCode;
import hms.spm.core.service.SmsCampaignService;
import hms.spm.core.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ucsc.mis.orm.dao.SmsCampaignDao;
import ucsc.mis.orm.model.MtMessage;
import ucsc.mis.orm.model.SMSCampaign;
import ucsc.mis.orm.model.User;
import ucsc.mis.util.GmcConnector;

import java.util.Date;
import java.util.List;

/**
 * Created by kusala on 2/10/16.
 */
@Service("smsCampaignService")
@Transactional
public class SmsCampaignServiceImpl implements SmsCampaignService {

    @Autowired
    private SmsCampaignDao smsCampaignDao;
    @Autowired
    private GmcConnector gmcConnector;
    @Autowired
    private UserService userService;

    public List<SMSCampaign> getAllSmsCampaigns() {
        return smsCampaignDao.findAllCampaigns();
    }

    public SMSCampaign getCampaignById(long id) {
        SMSCampaign campaign = smsCampaignDao.findCampaignById(id);

        if (campaign == null) {
            throw new CampaignManagementException(ErrorCode.CAMPAIGN_NOT_FOUND);
        }
        return campaign;
    }

    public long createCampaign(SMSCampaign campaign) throws CampaignManagementException {

        return smsCampaignDao.save(campaign);
    }

    public void updateCampaign(SMSCampaign campaign) throws CampaignManagementException {


        smsCampaignDao.merge(campaign);
    }

    public void startCampaign(long id) throws CampaignManagementException {

        SMSCampaign campaign = getCampaignById(id);

        List<User> users = userService.getAllUsers();
        Date date = new Date();

        for (User user : users) {

            MtMessage mtMessage = new MtMessage(campaign.getTemplate(),user.getPhoneNo(),"1111","111", date);
            gmcConnector.sendMtMessage(mtMessage);
        }

       // emailService.sendEmail(campaign);

    }
}
