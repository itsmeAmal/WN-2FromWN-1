/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ifix.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author 4m4l
 */
public interface accountStatusViewDao {
    
    ResultSet getAllAccountStatus()throws SQLException;
    
}
