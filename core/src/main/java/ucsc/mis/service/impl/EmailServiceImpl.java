package ucsc.mis.service.impl;

import hms.spm.core.service.UserService;
import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.velocity.VelocityEngineUtils;
import ucsc.mis.orm.model.EmailCampaign;
import ucsc.mis.orm.model.User;
import ucsc.mis.service.EmailService;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by kusala on 11/27/15.
 */
@Service("emailService")
@Transactional
public class EmailServiceImpl implements EmailService {

    @Autowired
    private JavaMailSender mailSender;

    @Autowired
    private VelocityEngine velocityEngine;

    @Autowired
    UserService userService;

    public void sendEmail(final String toAddress, String fromAddress, final String subject, String msgBody) {

        MimeMessagePreparator preparator = new MimeMessagePreparator() {

            public void prepare(MimeMessage mimeMessage) throws Exception {

                MimeMessageHelper message = new MimeMessageHelper(mimeMessage);
                message.setTo(toAddress);


                message.setFrom(new InternetAddress("facebook.com", "Facebook", "UTF8"));
                message.setSubject(subject);

                Map model = new HashMap();

                String text = VelocityEngineUtils.mergeTemplateIntoString(velocityEngine, "loginAlert.vm", "UTF-8",
                        model);
                message.setText(text, true);
            }
        };

        mailSender.send(preparator);

    }

    public void sendEmail(final EmailCampaign campaign) {
        List<User> recipientList = userService.getAllNonAdminUsers();

        for (final User user : recipientList) {

            MimeMessagePreparator preparator = new MimeMessagePreparator() {

                public void prepare(MimeMessage mimeMessage) throws Exception {

                    MimeMessageHelper message = new MimeMessageHelper(mimeMessage);
                    message.setTo(user.getEmail());

                    message.setFrom(new InternetAddress(campaign.getSender(), campaign.getSender(), "UTF8"));
                    message.setSubject(campaign.getSubject());

                    Map model = new HashMap();
                    model.put("user", user.getName());
                    model.put("email", user.getEmail());
                    String text = VelocityEngineUtils.mergeTemplateIntoString(velocityEngine,
                            campaign.getTemplate().getPath(), "UTF-8", model);
                    message.setText(text, true);
                }
            };
            mailSender.send(preparator);
        }

    }
}
