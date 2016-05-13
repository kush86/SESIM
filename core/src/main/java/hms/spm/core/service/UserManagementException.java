package hms.spm.core.service;

/**
 * Created by kusala on 10/8/15.
 */
public class UserManagementException extends RuntimeException {

    ErrorCode errorCode;

    public UserManagementException(String message, ErrorCode errorCode) {
        super(message);
        this.errorCode = errorCode;
    }

    public UserManagementException(ErrorCode errorCode) {
        this.errorCode = errorCode;
    }

    public UserManagementException(Throwable cause, ErrorCode errorCode) {
        super(cause);
        this.errorCode = errorCode;
    }

    public ErrorCode getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(ErrorCode errorCode) {
        this.errorCode = errorCode;
    }
}
