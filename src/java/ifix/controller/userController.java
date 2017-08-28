/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ifix.controller;

import ifix.core.Validations;
import ifix.dao.Impl.userAccountDaoImpl;
import ifix.dao.Impl.userDaoImpl;
import ifix.model.User;
import ifix.model.UserAccount;
import java.sql.SQLException;

/**
 *
 * @author 4m4l
 */
public class userController {

    public static boolean addUser(String name, String address, String Contact) throws SQLException {
        userDaoImpl userdaDaoImpl = new userDaoImpl();
        User user = new User();
        user.setUserName(name);
        user.setUserAddress(address);
        user.setContact(Contact);
        user.setSatus(1);
        userdaDaoImpl.addUser(user);
        return true;
//        } 
    }

    public static boolean addUserAccount(String userAccountId, String userAccountUserId, String userAccountEmail, String userAccountPassword) throws SQLException {
        if (Validations.isNotEmpty(userAccountUserId) && Validations.isNotEmpty(userAccountEmail) && Validations.isNotEmpty(userAccountPassword)) {
            userAccountDaoImpl userAccountDaoImpl = new userAccountDaoImpl();
            UserAccount userAccount = new UserAccount();
            userAccount.setUserAccountId(Validations.getIntOrZeroFromString(userAccountId));
            userAccount.setUserAccountUserId(Validations.getIntOrZeroFromString(userAccountUserId));
            userAccount.setUserAccountEmail(userAccountEmail);
            userAccount.setUserAccountPassword(userAccountPassword);
            userAccountDaoImpl.addUserAccount(userAccount);
            return true;
        } else {
            return false;
        }
    }

    public static boolean updateUser(String userId, String name, String address, String contact) throws SQLException {
        if (Validations.isNotEmpty(name) && Validations.isNotEmpty(userId)) {
            userDaoImpl useDaoImpl = new userDaoImpl();
            User user = new User();
            user.setUserId(Validations.getIntOrZeroFromString(userId));
            user.setUserName(name);
            user.setUserAddress(address);
            user.setContact(contact);
            useDaoImpl.updateUser(user);
            return true;
        } else {
            return false;
        }
    }

    public static boolean updateUserAccount(String userAccountId, String userAccountUserId, String userAccountEmail, String userAccountPassword) throws SQLException {
        if (Validations.isNotEmpty(userAccountUserId) && Validations.isNotEmpty(userAccountId) && Validations.isNotEmpty(userAccountEmail) && Validations.isNotEmpty(userAccountPassword)) {
            userAccountDaoImpl useraAccountDaoImpl = new userAccountDaoImpl();
            UserAccount userAccount = new UserAccount();
            userAccount.setUserAccountId(Validations.getIntOrZeroFromString(userAccountId));
            userAccount.setUserAccountUserId(Validations.getIntOrZeroFromString(userAccountUserId));
            userAccount.setUserAccountEmail(userAccountEmail);
            userAccount.setUserAccountPassword(userAccountPassword);
            useraAccountDaoImpl.updateUserAccount(userAccount);
            return true;
        } else {
            return false;
        }
    }
//    public static User getUserByUserId(String userId)throws SQLException{
//    userDaoImpl userDaoImpl1 = new userDaoImpl();
//    
//    }

    public static boolean removeUser(String userId) throws SQLException {
        userDaoImpl userDaoImpl = new userDaoImpl();
        userDaoImpl.deleteUser(Validations.getIntOrZeroFromString(userId));
        return true;
    }

    public static boolean removeUserAccount(String userAccountId) throws SQLException {
        userAccountDaoImpl userAccountDaoImpl = new userAccountDaoImpl();
        userAccountDaoImpl.deleteUserAccount(Validations.getIntOrZeroFromString(userAccountId));
        return true;
    }

}
