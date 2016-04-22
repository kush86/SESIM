package ucsc.mis.orm.dao.impl;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import ucsc.mis.orm.dao.SmsCampaignDao;
import ucsc.mis.orm.model.SMSCampaign;

import java.util.List;

/**
 * Created by kusala on 2/10/16.
 */
@Repository("smsCampaignDao")
public class SmsCampaignDaoImpl extends UniversalDaoImpl<SMSCampaign> implements SmsCampaignDao {
    public List<SMSCampaign> findAllCampaigns() {

        Session session = getCurrentSession();
        return session.createCriteria(SMSCampaign.class).list();
    }

    public SMSCampaign findCampaignById(long id) {
        Session session = getCurrentSession();

        return (SMSCampaign) session.createCriteria(SMSCampaign.class).add(Restrictions.eq("id", id))
                                      .uniqueResult();
    }

}
