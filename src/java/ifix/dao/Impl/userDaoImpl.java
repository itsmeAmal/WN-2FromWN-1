/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ifix.dao.Impl;

import ifix.connection.DatabaseConnection2;
import ifix.dao.userDao;
import ifix.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author 4m4l
 */
public class userDaoImpl implements userDao {

    private String selectQuery = "SELECT user_id, user_name, user_address, user_contact, user_status FROM user";

    @Override
    public boolean addUser(User user) throws SQLException {
        Connection con = DatabaseConnection2.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("INSERT INTO user(user_id, user_name, user_address, user_contact, user_status) VALUES (?,?,?,?,?)");
        ps.setInt(1, user.getUserId());
        ps.setString(2, user.getUserName());
        ps.setString(3, user.getUserAddress());
        ps.setString(4, user.getContact());
        ps.setInt(5, user.getSatus());
        ps.executeUpdate();
        ps.close();
        return true;
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        Connection con = DatabaseConnection2.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("UPDATE user SET user_id=?, user_name=?, user_address=?, user_contact=?, user_status=? WHERE user_id=?");
        ps.setInt(1, user.getUserId());
        ps.setString(2, user.getUserName());
        ps.setString(3, user.getUserAddress());
        ps.setString(4, user.getContact());
        ps.setInt(5, user.getSatus());
        ps.setInt(1, user.getUserId());
        ps.executeUpdate();
        ps.close();
        return true;
    }

    @Override
    public boolean deleteUser(int userId) throws SQLException {
        Connection con = DatabaseConnection2.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("DELETE FROM user WHERE user_id=?");
        ps.setInt(1, userId);
        ps.executeUpdate();
        ps.close();
        return true;
    }

    @Override
    public ResultSet getAllUsers() throws SQLException {
        commonDaoImpl commonDaoImpl = new commonDaoImpl();
        return commonDaoImpl.getAllRecords(selectQuery);
    }

    @Override
    public User getFirstUserFromResultset(ResultSet resultSet) throws SQLException {
        User user = null;
        while (resultSet.next()) {
            user = new User();
            user.setUserId(resultSet.getInt("user_id"));
            user.setUserName(resultSet.getString("user_name"));
            user.setUserAddress(resultSet.getString("user_address"));
            user.setContact(resultSet.getString("user_contact"));
            user.setSatus(resultSet.getInt("user_status"));
        }
        return user;
    }

    @Override
    public int getNextUserId() throws SQLException {
        int maxuserId = 0;
        Connection con = DatabaseConnection2.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("SELECT MAX(user_id) FROM user");
        ResultSet rset = ps.executeQuery();
        while (rset.next()) {
            maxuserId = rset.getInt(1);
        }
        return ++maxuserId;

    }
}
