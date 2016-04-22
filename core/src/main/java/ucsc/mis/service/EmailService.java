package ucsc.mis.service;

import org.springframework.stereotype.Service;
import ucsc.mis.orm.model.EmailCampaign;

/**
 * Created by kusala on 11/27/15.
 */
@Service("emailService")
public interface EmailService {

    void sendEmail(String toAddress, String fromAddress, String subject, String msgBody);

    void sendEmail(EmailCampaign campaign);
}
