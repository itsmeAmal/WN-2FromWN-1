/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ifix.dao.Impl;

import ifix.dao.accountStatusViewDao;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author 4m4l
 */
public class accountStatusDaoImpl implements accountStatusViewDao{

    private String selectQuery = "select Date, account_status_invoice, account_status_qty, account_status_unit_price, account_status_out, account_status_in from  account_status";
    
    @Override
    public ResultSet getAllAccountStatus() throws SQLException {
        commonDaoImpl commonImpl = new commonDaoImpl();
       return commonImpl.getAllRecords(selectQuery);       
    }
    
    
}
