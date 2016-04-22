package ucsc.mis.orm.dao.impl;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import ucsc.mis.orm.dao.EmailTemplateDao;
import ucsc.mis.orm.model.EmailTemplate;

import java.util.List;

/**
 * Created by kusala on 2/6/16.
 */
@Repository("emailTemplateDao")
public class EmailTemplateDaoImpl extends UniversalDaoImpl<EmailTemplate> implements EmailTemplateDao {

    public List<EmailTemplate> findAllEmailTemplates() {
        Session session = getCurrentSession();

        return session.createCriteria(EmailTemplate.class).list();
    }

    public EmailTemplate findEmailTemplateById(long id) {
        Session session = getCurrentSession();

        return (EmailTemplate) session.createCriteria(EmailTemplate.class).add(Restrictions.eq("id", id))
                                      .uniqueResult();
    }

    public EmailTemplate findEmailTemplateByName(String name) {
        Session session = getCurrentSession();

        return (EmailTemplate) session.createCriteria(EmailTemplate.class).add(Restrictions.eq("name", name))
                                      .uniqueResult();
    }
}
