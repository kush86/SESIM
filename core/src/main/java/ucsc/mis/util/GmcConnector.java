package ucsc.mis.util;


import org.slf4j.LoggerFactory;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import ucsc.mis.orm.model.MtMessage;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by kusala on 12/10/15.
 * <p/>
 * Provides the connectivity details for GMC modem connector.
 */
@Component
public class GmcConnector{

    private static final String MESSAGE = "message";
    private static final String SENDER = "sender";
    private static final String GATEWAY = "gateway";
    private static final String CORRELATION_ID = "correlationId";
    private static final String RECEIVED_TIME = "receivedTime";
    private static final String RECIPIENT = "recipient";

    private static final String RESPONSE_SUCCESS = "success";

    private static final org.slf4j.Logger logger = LoggerFactory.getLogger(GmcConnector.class);

    public GmcConnector() {
    }

    public GmcConnector(String modemId, String mtMessageForwardUrl) {
        this.modemId = modemId;
        this.mtForwardUrl = mtMessageForwardUrl;
    }

    private String modemId;

    protected String mtForwardUrl;

//    public MoMessage extractMessage(Map<String, String> request) {
//
//        logger.info("Extracting MoMessage from request");
//
//        String message = request.get(MESSAGE);
//        String sender = request.get(SENDER);
//        String receiver = request.get(GATEWAY);
//        String correlationId = request.get(CORRELATION_ID);
//        String receivedTimeString = request.get(RECEIVED_TIME);
//
//        if (message == null) {
//            throw new IllegalStateException("Missing message");
//        }
//
//        if(message.length() > 255) {
//            throw new IllegalStateException("Too long message");
//        }
//
//        if (sender == null) {
//            throw new IllegalStateException("Missing sender");
//        }
//
//        if (receiver == null) {
//            throw new IllegalStateException("Missing receiver");
//        }
//
//        if (correlationId == null || correlationId.isEmpty()) {
//            correlationId = String.valueOf(System.currentTimeMillis());
//        }
//
//        Date date;
//        if (receivedTimeString == null || receivedTimeString.isEmpty()) {
//            date = new Date();
//        } else {
//            date = new Date(Long.parseLong(receivedTimeString));
//        }
//
//        return new MoMessage(message, sender, receiver, correlationId, date);
//    }

    public boolean sendMtMessage(MtMessage mtMessage) {

        RestTemplate restTemplate = new RestTemplate();
        HttpHeaders jsonHttpHeaders = new HttpHeaders();

        try {

            Map<String, Object> data = new HashMap<String, Object>();
            data.put(MESSAGE,
                    mtMessage.getMessage());
            data.put(GATEWAY, mtMessage.getSender());
            data.put(RECIPIENT, mtMessage.getReceiver());
            data.put(CORRELATION_ID, mtMessage.getCorrelationId());

            logger.debug("Sending MtMessage [{}] to MtMessage notification end point [{}]", mtMessage, mtForwardUrl);
            HttpEntity<?> entity = new HttpEntity<Object>(data, jsonHttpHeaders);
            ResponseEntity<String> response = restTemplate.exchange(mtForwardUrl, HttpMethod.POST, entity,
                    String.class);

            logger.debug("MtMessage notification end point returned [{}]", response);

            if (HttpStatus.OK.equals(response.getStatusCode()) && RESPONSE_SUCCESS.equals(response.getBody())) {
                logger.info("MtMessage successfully sent");
                return true;
            } else {
                logger.info("MtMessage sending failed with message: {}, {}", response.getStatusCode(),
                        response.getBody());
                return false;
            }

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("Error occurred while sending MtMessage", e);
            return false;
        }
    }


    public String getModemId() {
        return modemId;
    }

    public void setModemId(String modemId) {
        this.modemId = modemId;
    }

    public String getMtForwardUrl() {
        return mtForwardUrl;
    }

    public void setMtForwardUrl(String mtForwardUrl) {
        this.mtForwardUrl = mtForwardUrl;
    }
}
