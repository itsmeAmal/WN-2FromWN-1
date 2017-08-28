/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ifix.dao.Impl;

import ifix.connection.DatabaseConnection2;
import ifix.dao.userAccountDao;
import ifix.model.UserAccount;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author 4m4l
 */
public class userAccountDaoImpl implements userAccountDao {

    private String selectQuery = "SELECT user_account_id, user_account_user_id, user_account_email, user_account_password, user_account_status FROM user_account";

    @Override
    public void addUserAccount(UserAccount userAccount) throws SQLException {
        Connection con = DatabaseConnection2.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("INSERT INTO user_account(user_account_id, user_account_user_id, user_account_email, user_account_password, user_account_status) VALUES (?,?,?,?,?)");
        ps.setInt(1, userAccount.getUserAccountId());
        ps.setInt(2, userAccount.getUserAccountUserId());
        ps.setString(3, userAccount.getUserAccountEmail());
        ps.setString(4, userAccount.getUserAccountPassword());
        ps.setInt(5, userAccount.getUserAccountStatus());
        ps.executeQuery();
        ps.close();
    }

    @Override
    public void updateUserAccount(UserAccount userAccount) throws SQLException {
        Connection con = DatabaseConnection2.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("UPDATE user_account SET user_account_id=?, user_account_user_id=?, user_account_email=?, user_account_password=?, user_account_status=? WHERE user_account_id=?");
        ps.setInt(1, userAccount.getUserAccountId());
        ps.setInt(2, userAccount.getUserAccountUserId());
        ps.setString(3, userAccount.getUserAccountEmail());
        ps.setString(4, userAccount.getUserAccountPassword());
        ps.setInt(5, userAccount.getUserAccountStatus());
        ps.setInt(6, userAccount.getUserAccountId());
        ps.executeQuery();
        ps.close();
    }

    @Override
    public void deleteUserAccount(int userAccountId) throws SQLException {
        Connection con = DatabaseConnection2.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("DELETE FROM user_account WHERE user_account_id=?");
        ps.setInt(1, userAccountId);
        ps.executeQuery();
        ps.close();
    }

    @Override
    public ResultSet getAllUserAccounts() throws SQLException {
        commonDaoImpl commDaoImpl = new commonDaoImpl();
        return commDaoImpl.getAllRecords(selectQuery);
    }
}
