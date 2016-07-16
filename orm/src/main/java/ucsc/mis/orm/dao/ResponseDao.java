package ucsc.mis.orm.dao;

import org.springframework.stereotype.Repository;
import ucsc.mis.orm.dao.UniversalDao;
import ucsc.mis.orm.model.Response;

import java.util.Date;

/**
 * Created by kusala on 7/14/16.
 */
@Repository("responseDao")
public interface ResponseDao extends UniversalDao<Response> {

    void addResponseRecord(long userId, long campaignId, Date time);

}
