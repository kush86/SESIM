/*
 *  (C) Copyright 2015 hSenid Mobile Solutions (Pvt) Limited.
 *  All Rights Reserved.
 * <p/>
 * These materials are unpublished, proprietary, confidential source code of
 * hSenid Mobile Solutions (Pvt) Limited and constitute a TRADE SECRET
 * of hSenid Mobile Solutions (Pvt) Limited.
 * <p/>
 * hSenid Mobile Solutions (Pvt) Limited retains all title to and intellectual
 * property rights in these materials.
 *
 */

package ucsc.mis.orm.dao.impl;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import ucsc.mis.orm.dao.CampaignDao;
import ucsc.mis.orm.model.CampaignStatus;
import ucsc.mis.orm.model.EmailCampaign;

import java.util.List;

/**
 * @author Sadupa Wijeratne
 * @since 9/7/15 3:56 PM
 */

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
