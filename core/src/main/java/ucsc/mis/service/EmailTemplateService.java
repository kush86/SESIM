package ucsc.mis.service;

import org.springframework.stereotype.Service;
import ucsc.mis.orm.model.EmailTemplate;

import java.util.List;

/**
 * Created by kusala on 2/6/16.
 */
@Service("emailTemplateService")
public interface EmailTemplateService {

    List<EmailTemplate> getAllTemplates();

    EmailTemplate getTemplateById(long id);

    long createEmailTemplate(String name, String path);

    EmailTemplate getTemplateByName(String template);
}
