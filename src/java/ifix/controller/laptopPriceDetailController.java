/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ifix.controller;

import ifix.core.Validations;
import ifix.dao.Impl.commonDaoImpl;
import ifix.dao.Impl.laptopPriceDetailDaoImpl;
import ifix.model.laptopPriceDetail;
import java.sql.SQLException;

/**
 *
 * @author 4m4l
 */
public class laptopPriceDetailController {

    public static boolean addLaptopPrice(String laptopPriceId, String laptopPriceLaptopId, String buyingPrice, String sellingPrice, String minSellingPrice, String status) throws SQLException {
        if (Validations.isNotEmpty(laptopPriceId) && Validations.isNotEmpty(laptopPriceLaptopId) && Validations.isNotEmpty(buyingPrice) && Validations.isNotEmpty(sellingPrice)) {
            laptopPriceDetailDaoImpl laptopPriceDetailDaoImpl = new laptopPriceDetailDaoImpl();
            laptopPriceDetail obj = new laptopPriceDetail();
            obj.setLaptopPriceDetailId(Validations.getIntOrZeroFromString(laptopPriceId));
            obj.setLaptopPricedetailModelId(Validations.getIntOrZeroFromString(laptopPriceLaptopId));
            obj.setLaptopPriceDetailBuyingPrice(Validations.getBigDecimalOrZeroFromString(buyingPrice));
            obj.setLaptopPriceDetailSellingPrice(Validations.getBigDecimalOrZeroFromString(sellingPrice));
            obj.setLaptopPriceDetailMinSellingPrice(Validations.getBigDecimalOrZeroFromString(minSellingPrice));
            laptopPriceDetailDaoImpl.addLaptopPriceDetail(obj);
            return true;
        } else {
            return false;
        }
    }

    public static boolean updateLaptopPrice(String buyingPrice, String sellingPrice, String minSellingPrice, String status) throws SQLException {
        if (Validations.isNotEmpty(buyingPrice) && Validations.isNotEmpty(sellingPrice) && Validations.isNotEmpty(minSellingPrice) && Validations.isNotEmpty(status)) {
            laptopPriceDetailDaoImpl laptopPriceDetailDaoImpl = new laptopPriceDetailDaoImpl();
            laptopPriceDetail laptopPriceDetail = new laptopPriceDetail();
            laptopPriceDetail.setLaptopPriceDetailSellingPrice(Validations.getBigDecimalOrZeroFromString(sellingPrice));
            laptopPriceDetail.setLaptopPriceDetailBuyingPrice(Validations.getBigDecimalOrZeroFromString(buyingPrice));
            laptopPriceDetail.setLaptopPriceDetailMinSellingPrice(Validations.getBigDecimalOrZeroFromString(minSellingPrice));
            laptopPriceDetail.setLaptopPriceDetailStatus(Validations.getIntOrZeroFromString(status));
            return true;
        } else {
            return false;
        }
    }

    public static boolean removelaptopPrice(String laptopPriceId) throws SQLException {
        if (Validations.isNotEmpty(laptopPriceId)) {
            laptopPriceDetailDaoImpl laptopPriceDetailDaoImpl = new laptopPriceDetailDaoImpl();
            laptopPriceDetailDaoImpl.deleteLaptopPriceDetail(Validations.getIntOrZeroFromString(laptopPriceId));
            return true;
        } else {
            return false;
        }
    }

    public static boolean getAlllaptopPriceDetails() throws SQLException {
        laptopPriceDetailDaoImpl lapDetailDaoImpl = new laptopPriceDetailDaoImpl();
        lapDetailDaoImpl.getAllLaptopPriceDetail();
        return true;
    }

}
