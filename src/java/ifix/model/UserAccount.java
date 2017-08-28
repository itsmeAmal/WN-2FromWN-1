/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ifix.model;

/**
 *
 * @author 4m4l
 */
public class UserAccount {
    private int userAccountId;
    private int userAccountUserId;
    private String userAccountEmail;
    private String userAccountPassword;
    private int userAccountStatus;

    /**
     * @return the userAccountId
     */
    public int getUserAccountId() {
        return userAccountId;
    }

    /**
     * @param userAccountId the userAccountId to set
     */
    public void setUserAccountId(int userAccountId) {
        this.userAccountId = userAccountId;
    }

    /**
     * @return the userAccountUserId
     */
    public int getUserAccountUserId() {
        return userAccountUserId;
    }

    /**
     * @param userAccountUserId the userAccountUserId to set
     */
    public void setUserAccountUserId(int userAccountUserId) {
        this.userAccountUserId = userAccountUserId;
    }

    /**
     * @return the userAccountEmail
     */
    public String getUserAccountEmail() {
        return userAccountEmail;
    }

    /**
     * @param userAccountEmail the userAccountEmail to set
     */
    public void setUserAccountEmail(String userAccountEmail) {
        this.userAccountEmail = userAccountEmail;
    }

    /**
     * @return the userAccountPassword
     */
    public String getUserAccountPassword() {
        return userAccountPassword;
    }

    /**
     * @param userAccountPassword the userAccountPassword to set
     */
    public void setUserAccountPassword(String userAccountPassword) {
        this.userAccountPassword = userAccountPassword;
    }

    /**
     * @return the userAccountStatus
     */
    public int getUserAccountStatus() {
        return userAccountStatus;
    }

    /**
     * @param userAccountStatus the userAccountStatus to set
     */
    public void setUserAccountStatus(int userAccountStatus) {
        this.userAccountStatus = userAccountStatus;
    }
}
