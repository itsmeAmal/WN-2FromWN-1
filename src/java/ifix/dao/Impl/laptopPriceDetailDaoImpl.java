/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ifix.dao.Impl;

import ifix.connection.DatabaseConnection2;
import ifix.core.Validations;
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

    private String selectQuery = "SELECT laptop_price_detail_id, laptop_price_detail_model_id, laptop_price_detail_buying_price, laptop_price_detail_selling_price, laptop_price_detail_min_selling_price, laptop_price_detail_status, laptop_price_detail_qty, laptop_price_detail_date  FROM laptop_price_detail";

    @Override
    public void addLaptopPriceDetail(laptopPriceDetail lapPriceDetail) throws SQLException {
        Connection con = DatabaseConnection2.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("INSERT INTO laptop_price_detail(laptop_price_detail_model_id, laptop_price_detail_buying_price, laptop_price_detail_selling_price, laptop_price_detail_min_selling_price, laptop_price_detail_status, laptop_price_detail_qty, laptop_price_detail_date) VALUES (?,?,?,?,?,?,?) ON DUPLICATE KEY UPDATE laptop_price_detail_model_id=?, laptop_price_detail_buying_price=?, laptop_price_detail_selling_price=?, laptop_price_detail_min_selling_price=?, laptop_price_detail_status=?, laptop_price_detail_qty=?, laptop_price_detail_date=?");

        ps.setString(1, lapPriceDetail.getLaptopPricedetailModelId());
        ps.setBigDecimal(2, lapPriceDetail.getLaptopPriceDetailBuyingPrice());
        ps.setBigDecimal(3, lapPriceDetail.getLaptopPriceDetailSellingPrice());
        ps.setBigDecimal(4, lapPriceDetail.getLaptopPriceDetailMinSellingPrice());
        ps.setInt(5, 1);
        ps.setInt(6, lapPriceDetail.getLaptopPriceDetailQty());
        ps.setDate(7, Validations.getCurrentJavaSqlDate());

        ps.setString(8, lapPriceDetail.getLaptopPricedetailModelId());
        ps.setBigDecimal(9, lapPriceDetail.getLaptopPriceDetailBuyingPrice());
        ps.setBigDecimal(10, lapPriceDetail.getLaptopPriceDetailSellingPrice());
        ps.setBigDecimal(11, lapPriceDetail.getLaptopPriceDetailMinSellingPrice());
        ps.setInt(12, 1);
        ps.setInt(13, lapPriceDetail.getLaptopPriceDetailQty());
        ps.setDate(14, Validations.getCurrentJavaSqlDate());
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

    @Override
    public int getLaptopQtyById(String laptopModelNo) throws SQLException {
        int qty = 0;
        Connection con = DatabaseConnection2.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement(selectQuery + "WHERE laptop_price_detail_model_id=?");
        ps.setString(1, laptopModelNo);
        ResultSet rset = ps.executeQuery();
        while (rset.next()) {
            qty = rset.getInt("laptop_price_detail_qty");
        }
        return qty;
    }

    @Override
    public laptopPriceDetail getLaptopPriceDetailByModelId(String laptopModelId) throws SQLException {
        ResultSet rset = getLaptopPriceDetailByOneAttribute("laptop_price_detail_model_id", " LIKE ", laptopModelId);
        laptopPriceDetail lapPriceDetail = getFirstLaptopPriceDetail(rset);
        return lapPriceDetail;
    }

    @Override
    public laptopPriceDetail getFirstLaptopPriceDetail(ResultSet rset) throws SQLException {
        laptopPriceDetail laptopPriceDetail1 = null;
        while (rset.next()) {
            laptopPriceDetail1 = new laptopPriceDetail();
            laptopPriceDetail1.setLaptopPriceDetailId(rset.getInt("laptop_price_detail_id"));
            laptopPriceDetail1.setLaptopPricedetailModelId(rset.getString("laptop_price_detail_model_id"));
            laptopPriceDetail1.setLaptopPriceDetailBuyingPrice(rset.getBigDecimal("laptop_price_detail_buying_price"));
            laptopPriceDetail1.setLaptopPriceDetailSellingPrice(rset.getBigDecimal("laptop_price_detail_selling_price"));
            laptopPriceDetail1.setLaptopPriceDetailMinSellingPrice(rset.getBigDecimal("laptop_price_detail_min_selling_price"));
            laptopPriceDetail1.setLaptopPriceDetailStatus(rset.getInt("laptop_price_detail_status"));
            laptopPriceDetail1.setLaptopPriceDetailQty(rset.getInt("laptop_price_detail_qty"));
            laptopPriceDetail1.setLaptopPriceDetailDate(rset.getDate("laptop_price_detail_date"));
        }
        return laptopPriceDetail1;
    }

    @Override
    public ResultSet getAllLowQtyLaptopDetails() throws SQLException {
        Connection con = DatabaseConnection2.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("SELECT count(laptop_price_detail_qty) FROM laptop_price_detail join laptop_model on "
                + "laptop_price_detail_model_id = laptop_model_laptop_id where laptop_price_detail_qty < 10 order by laptop_model_laptop_id");
        return ps.executeQuery();
    }
}
