package ucsc.mis.orm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "mt_message")
public class MtMessage implements Serializable {

    private static final long serialVersionUID = 2675837222824964915L;

    public static final String QUEUED = "QUEUED";
    public static final String SENT = "SENT";
    public static final String FAILED = "FAILED";

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private long id;

    @Column(name = "message")
    private String message;

    @Column(name = "receiver")
    private String receiver;

    @Column(name = "sender")
    private String sender;

    @Column(name = "correlation_id")
    private String correlationId;

    @Column(name = "sent_time")
    private Date sentTime;

    @Column(name = "status")
    private String status;

    public MtMessage() {
    }

    public MtMessage(String message, String receiver, String sender, String correlationId, Date sentTime ) {
        this.message = message;
        this.receiver = receiver;
        this.sender = sender;
        this.correlationId = correlationId;
        this.sentTime = sentTime;
        this.status = QUEUED;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public String getCorrelationId() {
        return correlationId;
    }

    public void setCorrelationId(String correlationId) {
        this.correlationId = correlationId;
    }

    public Date getSentTime() {
        return sentTime;
    }

    public void setSentTime(Date sentTime) {
        this.sentTime = sentTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "MtMessage{" +
               "id=" + id +
               ", message='" + message + '\'' +
               ", receiver='" + receiver + '\'' +
               ", sender='" + sender + '\'' +
               ", correlationId='" + correlationId + '\'' +
               ", sentTime=" + sentTime +
               ", status='" + status + '\'' +
               '}';
    }
}
