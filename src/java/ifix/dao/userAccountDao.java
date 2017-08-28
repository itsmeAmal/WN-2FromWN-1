/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ifix.dao;

import ifix.model.UserAccount;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author 4m4l
 */
public interface userAccountDao {
    
    void addUserAccount(UserAccount userAccount)throws SQLException;
    
    void updateUserAccount(UserAccount userAccount)throws SQLException;
    
    void deleteUserAccount(int userAccount)throws SQLException;
    
    ResultSet getAllUserAccounts() throws SQLException;
     
}
