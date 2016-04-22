package ucsc.mis.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ucsc.mis.orm.dao.EmailTemplateDao;
import ucsc.mis.orm.model.EmailTemplate;
import ucsc.mis.service.EmailTemplateService;

import java.util.List;

/**
 * Created by kusala on 2/6/16.
 */
@Service("emailTemplateService")
@Transactional
public class EmailTemplateServiceImpl implements EmailTemplateService {
    @Autowired
    private EmailTemplateDao emailTemplateDao;

    public List<EmailTemplate> getAllTemplates() {
        return emailTemplateDao.findAllEmailTemplates();
    }

    public EmailTemplate getTemplateById(long id) {
        return emailTemplateDao.findEmailTemplateById(id);
    }

    public long createEmailTemplate(String name, String path) {

        EmailTemplate emailTemplate = new EmailTemplate(name, path);
        return emailTemplateDao.save(emailTemplate);
    }

    public EmailTemplate getTemplateByName(String template) {
        return emailTemplateDao.findEmailTemplateByName(template);
    }
}
