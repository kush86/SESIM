package ucsc.mis.orm.dao.impl;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import ucsc.mis.orm.dao.ResponseDao;
import ucsc.mis.orm.model.Response;

import java.util.Date;

/**
 * Created by kusala on 7/14/16.
 */
@Repository("responseDao")
public class ResponseDaoImpl extends UniversalDaoImpl<Response> implements ResponseDao {

    public void addResponseRecord(long userId, long campaignId, Date time) {

        Response response = new Response();
        response.setUserId(userId);
        response.setCampaignId(campaignId);
        response.setTime(time);

        Session session = getCurrentSession();
        session.save(response);

    }
}
