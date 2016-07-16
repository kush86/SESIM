package ucsc.mis.orm.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by kusala on 7/14/16.
 */
@Entity
@Table(name = "phish_attempt")
public class phishAttempt implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    long id;

    @Column(name = "user_id")
    User user;

    @Column(name = "campaing_id")
    EmailCampaign emailCampaign;

    @Column(name = "mail_name")
    String mailSenderName;

    @Column(name = "time")
    Date time;
}
