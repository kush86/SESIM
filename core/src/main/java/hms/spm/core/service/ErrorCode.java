package hms.spm.core.service;

/**
 * Created by kusala on 10/8/15.
 */
public enum ErrorCode {

    /* user mangement error codes */
    DUPLICATE_USERNAME("Username is already in use"),
    DUPLICATE_EMAIL("E-mail is already in use"),
    INVALID_CONFIRM_PASSWORD("'Confirm password' and 'Password' do not match"),
    EMPTY_REQUIRED_PARAMETERS("Required parameter(s) are empty"),
    INVALID_USER_CATEGORY("Selected User Type is invalid"),
    INVALID_USER("Invalid User"),
    INVALID_OLD_PASSWORD("Old password does not match"),
    INVALID_USER_CATEGORY_NAME("User Type is invalid"),
    DUPLICATE_USER_CATEGORY_NAME("Name is already in use"),
    INVALID_USER_STATE("User State is invalid"),
    INVALID_EMAIL("Invalid E-mail"),

    /* campaign management error codes*/
    INVALID_CAMPAIGN("Invalid Campaign"),
    CAMPAIGN_USER_IS_NULL("Campaign user is required"),
    DUPLICATE_CAMPAIGN_NAME("Duplicate campaign name"),
    UNAUTHORIZED_SHORT_CODE("Short code can not be used by this user"),
    NON_UNIQUE_CAMPAIGN_CONFIGURATION("Short-code and keyword combination must be unique for a user"),
    CAMPAIGN_START_TIME_MUST_BE_BEFORE_END_TIME("Campaign start time must be bofore end time"),
    CAMPAIGN_TYPE_IS_NULL("Campaign Type is required"),
    SHORT_CODE_IS_NULL("Short-Code is required"),
    CAMPAIGN_ALREADY_EXIPRED("Campaign is already expired"),
    CAMPAIGN_NOT_FOUND("Campaign not found"),
    CAMPAIGN_IN_ACTIVE_STATE("Campaign must be in 'EXPIRED' or 'STOPPED' state to be removed"),
    CAMPAIGN_END_TIME_MUST_BE_FUTURE_TIME("Campaign end time must be a future time"),
    FROM_TIME_MUST_BE_BEFORE_TO_TIME("'from' time must be bofore 'to' time"),

    INVALID_SHORT_CODE_TYPE("Short-code type is invalid"),
    PRIVATE_SHORT_CODE_OWNER_CAN_NOT_BE_NULL("User is required for PRIVATE short-codes"),
    DUPLICATE_SHORT_CODE("Duplicate short-code"),
    INVALID_SHORT_CODE("Invalid Short-code"),
    INVALID_SHORT_CODE_STATUS("Short-code status is invalid");

    String detailedError;

    ErrorCode(String message) {
        this.detailedError = message;
    }

    public String getDetailedError() {
        return detailedError;
    }

    public void setDetailedError(String detailedError) {
        this.detailedError = detailedError;
    }
}
