package ucsc.mis.orm.dao;

import org.springframework.stereotype.Repository;
import ucsc.mis.orm.model.EmailTemplate;

import java.util.List;

/**
 * Created by kusala on 2/6/16.
 */
@Repository("emailTemplateDao")
public interface EmailTemplateDao extends UniversalDao<EmailTemplate> {

    List<EmailTemplate> findAllEmailTemplates();

    EmailTemplate findEmailTemplateById(long id);

    EmailTemplate findEmailTemplateByName(String name);
}
