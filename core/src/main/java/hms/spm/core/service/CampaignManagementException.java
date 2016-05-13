package hms.spm.core.service;

/**
 * Created by kusala on 10/12/15.
 */
public class CampaignManagementException extends RuntimeException {

    ErrorCode errorCode;

    public CampaignManagementException(Throwable cause, ErrorCode errorCode) {
        super(cause);
        this.errorCode = errorCode;
    }

    public CampaignManagementException(ErrorCode errorCode) {
        this.errorCode = errorCode;
    }

    public ErrorCode getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(ErrorCode errorCode) {
        this.errorCode = errorCode;
    }
}
