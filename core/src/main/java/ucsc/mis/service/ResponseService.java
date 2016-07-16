package ucsc.mis.service;

import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * Created by kusala on 7/14/16.
 */
@Service("responseService")
public interface ResponseService {
    void  createResponse(String userId, String campaignId, Date time);
}
