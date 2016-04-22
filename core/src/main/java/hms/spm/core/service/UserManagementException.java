/*
 *  (C) Copyright 2015 hSenid Mobile Solutions (Pvt) Limited.
 *  All Rights Reserved.
 * <p/>
 * These materials are unpublished, proprietary, confidential source code of
 * hSenid Mobile Solutions (Pvt) Limited and constitute a TRADE SECRET
 * of hSenid Mobile Solutions (Pvt) Limited.
 * <p/>
 * hSenid Mobile Solutions (Pvt) Limited retains all title to and intellectual
 * property rights in these materials.
 *
 */

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
