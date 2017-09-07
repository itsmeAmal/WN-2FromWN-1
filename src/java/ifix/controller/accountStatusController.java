/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ifix.controller;

import ifix.dao.Impl.accountStatusDaoImpl;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author 4m4l
 */
public class accountStatusController {
    
    public static ResultSet getAllRecords()throws SQLException{
        accountStatusDaoImpl accountDaoImpl = new accountStatusDaoImpl();        
        return accountDaoImpl.getAllAccountStatus();  
    }  
}
