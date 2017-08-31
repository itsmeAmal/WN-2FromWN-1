/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ifix.dao.Impl;

import ifix.connection.DatabaseConnection2;
import ifix.dao.laptopPriceDetailDao;
import ifix.model.laptopPriceDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author 4m4l
 */
public class laptopPriceDetailDaoImpl implements laptopPriceDetailDao {

    private String selectQuery = "SELECT laptop_price_detail_id, laptop_price_detail_model_id, laptop_price_detail_buying_price, laptop_price_detail_selling_price, laptop_price_detail_min_selling_price, laptop_price_detail_status, laptop_price_detail_qty  FROM laptop_price_detail";

    @Override
    public void addLaptopPriceDetail(laptopPriceDetail lapPriceDetail) throws SQLException {
        Connection con = DatabaseConnection2.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("INSERT INTO laptop_price_detail(laptop_price_detail_model_id, laptop_price_detail_buying_price, laptop_price_detail_selling_price, laptop_price_detail_min_selling_price, laptop_price_detail_status, laptop_price_detail_qty) VALUES (?,?,?,?,?,?)");

        ps.setString(1, lapPriceDetail.getLaptopPricedetailModelId());
        ps.setBigDecimal(2, lapPriceDetail.getLaptopPriceDetailBuyingPrice());
        ps.setBigDecimal(3, lapPriceDetail.getLaptopPriceDetailSellingPrice());
        ps.setBigDecimal(4, lapPriceDetail.getLaptopPriceDetailMinSellingPrice());
        ps.setInt(5, 1);
        ps.setInt(6, lapPriceDetail.getLaptopPriceDetailQty());
        ps.executeUpdate();
        ps.close();

    }

    @Override
    public void deleteLaptopPriceDetail(int laptopPriceDetailId) throws SQLException {
        Connection con = DatabaseConnection2.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("DELETE FROM laptop_price_detail WHERE laptop_price_detail_id=?");
        ps.setInt(1, laptopPriceDetailId);
        ps.executeUpdate();
        ps.close();
    }

    @Override
    public ResultSet getAllLaptopPriceDetail() throws SQLException {
        commonDaoImpl commonDaoImpl = new commonDaoImpl();
        return commonDaoImpl.getAllRecords(selectQuery);

    }

    @Override
    public ResultSet getLaptopPriceDetailByOneAttribute(String attribute, String condition, String value) throws SQLException {
        commonDaoImpl commonDaoImpl = new commonDaoImpl();
        return commonDaoImpl.getResultByAttribute(selectQuery, attribute, condition, value);
    }

}
