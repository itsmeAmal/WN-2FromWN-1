/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ifix.controller;

import ifix.core.Validations;
import ifix.dao.Impl.userAccountDaoImpl;
import ifix.model.UserAccount;
import java.sql.SQLException;

/**
 *
 * @author 4m4l
 */
public class userAccountController {

    public static boolean addUserAccount(String userAccountId, String userAccountUserId, String email, String password, String status) throws SQLException {
        if (Validations.isNotEmpty(userAccountId) && Validations.isNotEmpty(userAccountUserId) && Validations.isNotEmpty(email) && Validations.isNotEmpty(password)) {
            userAccountDaoImpl useraccountDaoImpl = new userAccountDaoImpl();
            UserAccount userAccount = new UserAccount();
            userAccount.setUserAccountId(Validations.getIntOrZeroFromString(userAccountId));
            userAccount.setUserAccountUserId(Validations.getIntOrZeroFromString(userAccountUserId));
            userAccount.setUserAccountEmail(email);
            userAccount.setUserAccountPassword(password);
            userAccount.setUserAccountStatus(Validations.getIntOrZeroFromString(status));
            useraccountDaoImpl.addUserAccount(userAccount);
            return true;
        } else {
            return false;
        }
    }
}
