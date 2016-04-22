package ucsc.mis.orm.dao;

import ucsc.mis.orm.model.EmailCampaign;

import java.util.List;

/**
 * (C) Copyright 2015 hSenid Mobile Solutions (Pvt) Limited.
 * All Rights Reserved.
 * <p/>
 * These materials are unpublished, proprietary, confidential source code of
 * hSenid Mobile Solutions (Pvt) Limited and constitute a TRADE SECRET
 * of hSenid Mobile Solutions (Pvt) Limited.
 * <p/>
 * hSenid Mobile Solutions (Pvt) Limited retains all title to and intellectual
 * property rights in these materials.
 *
 * @author Sadupa Wijeratne
 * @since 9/7/15 3:55 PM
 */
public interface CampaignDao extends UniversalDao<EmailCampaign> {

    List<EmailCampaign> findAllCampaigns();

    EmailCampaign findCampaignById(long id);

}
