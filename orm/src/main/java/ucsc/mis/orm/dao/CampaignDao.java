package ucsc.mis.orm.dao;

import ucsc.mis.orm.model.EmailCampaign;

import java.util.List;
public interface CampaignDao extends UniversalDao<EmailCampaign> {

    List<EmailCampaign> findAllCampaigns();

    EmailCampaign findCampaignById(long id);

}
