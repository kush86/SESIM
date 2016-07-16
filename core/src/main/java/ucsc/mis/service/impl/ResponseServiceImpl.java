package ucsc.mis.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ucsc.mis.orm.dao.ResponseDao;
import ucsc.mis.service.ResponseService;

import java.util.Date;

/**
 * Created by kusala on 7/14/16.
 */
@Transactional
@Service("responseService")
public class ResponseServiceImpl implements ResponseService {
    @Autowired
    ResponseDao responseDao;

    public void createResponse(String userId, String campaignId, Date time) {
        long user = Long.valueOf(userId);
        long campaing = Long.valueOf(campaignId);

        responseDao.addResponseRecord(user, campaing, time);

    }
}
