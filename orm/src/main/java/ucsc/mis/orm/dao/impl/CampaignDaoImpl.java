package ucsc.mis.orm.dao.impl;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import ucsc.mis.orm.dao.CampaignDao;
import ucsc.mis.orm.model.CampaignStatus;
import ucsc.mis.orm.model.EmailCampaign;

import java.util.List;

@Repository("CampaignDao")
public class CampaignDaoImpl extends UniversalDaoImpl<EmailCampaign> implements CampaignDao {

    public List<EmailCampaign> findAllCampaigns() {

        Session session = getCurrentSession();
        return session.createCriteria(EmailCampaign.class).list();
    }

    public List<EmailCampaign> findActiveCampaigns() {
        Session session = getCurrentSession();

        return session.createCriteria(EmailCampaign.class).add(Restrictions.ne("status", CampaignStatus.DELETED))
                      .list();
    }

    public EmailCampaign findCampaignById(long id) {
        Session session = getCurrentSession();

        return (EmailCampaign) session.createCriteria(EmailCampaign.class).add(Restrictions.eq("id", id))
                                      .uniqueResult();
    }



}
