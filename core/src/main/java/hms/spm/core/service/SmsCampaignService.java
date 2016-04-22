package hms.spm.core.service;

import ucsc.mis.orm.model.SMSCampaign;

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
 * @since 9/7/15 4:00 PM
 */
public interface SmsCampaignService {

    List<SMSCampaign> getAllSmsCampaigns();

    SMSCampaign getCampaignById(long id) throws CampaignManagementException;

    long createCampaign(SMSCampaign campaign) throws CampaignManagementException;

    void updateCampaign(SMSCampaign campaign) throws CampaignManagementException;

    void startCampaign(long l);
}
