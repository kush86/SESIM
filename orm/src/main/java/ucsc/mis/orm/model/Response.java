package ucsc.mis.orm.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by kusala on 7/14/16.
 */
@Entity
@Table(name = "response")
public class Response implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private long id;

    @Column(name = "userId", nullable = false)
    private long userId;

    @Column(name = "campaignId", nullable = false)
    private long campaignId;

    @Column(name = "time", nullable = false)
    private Date time;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public long getCampaignId() {
        return campaignId;
    }

    public void setCampaignId(long campaignId) {
        this.campaignId = campaignId;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
