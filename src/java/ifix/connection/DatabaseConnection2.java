/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ifix.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 4m4l
 */
public class DatabaseConnection2 {

    public static Connection getDatabaseConnection() throws SQLException{
        Connection con = null;
        try {

            Class.forName("com.mysql.jdbc.Driver").newInstance();

            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/iFixLaptops", "root", "55555");

        } catch (ClassNotFoundException  | InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(DatabaseConnection2.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }

}
