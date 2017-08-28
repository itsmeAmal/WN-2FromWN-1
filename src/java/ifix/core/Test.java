/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ifix.core;

import ifix.dao.Impl.userDaoImpl;
import java.sql.SQLException;

/**
 *
 * @author 4m4l
 */
public class Test {

    public static void main(String[] args) throws SQLException {
        userDaoImpl daoImpl = new userDaoImpl();
        int id = daoImpl.getNextUserId();
        System.out.println(id);
    }

}
