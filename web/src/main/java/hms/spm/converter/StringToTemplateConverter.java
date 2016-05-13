package hms.spm.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import ucsc.mis.orm.model.EmailTemplate;
import ucsc.mis.service.EmailTemplateService;

/**
 * Created by kusala on 10/6/15.
 */
public class StringToTemplateConverter implements Converter <String, EmailTemplate> {
    @Autowired
    EmailTemplateService emailTemplateService;

    @Override
    public EmailTemplate convert(String template) {

//       if(userId.isEmpty()){
//           return null;
//       }
       return emailTemplateService.getTemplateByName(template);
    }
}
