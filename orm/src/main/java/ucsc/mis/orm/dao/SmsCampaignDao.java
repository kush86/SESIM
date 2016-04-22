package ucsc.mis.orm.dao;

import ucsc.mis.orm.model.SMSCampaign;

import java.util.List;

/**
 * Created by kusala on 2/10/16.
 */
public interface SmsCampaignDao extends UniversalDao<SMSCampaign> {

    List<SMSCampaign> findAllCampaigns();

    SMSCampaign findCampaignById(long id);
}
