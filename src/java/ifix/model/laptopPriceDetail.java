/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ifix.model;

import java.math.BigDecimal;

/**
 *
 * @author 4m4l
 */
public class laptopPriceDetail {

    private int laptopPriceDetailId;
    private int laptopPricedetailModelId;
    private BigDecimal laptopPriceDetailBuyingPrice;
    private BigDecimal laptopPriceDetailSellingPrice;
    private BigDecimal laptopPriceDetailMinSellingPrice;
    private int laptopPriceDetailStatus;

    /**
     * @return the laptopPriceDetailId
     */
    public int getLaptopPriceDetailId() {
        return laptopPriceDetailId;
    }

    /**
     * @param laptopPriceDetailId the laptopPriceDetailId to set
     */
    public void setLaptopPriceDetailId(int laptopPriceDetailId) {
        this.laptopPriceDetailId = laptopPriceDetailId;
    }

    /**
     * @return the laptopPricedetailModelId
     */
    public int getLaptopPricedetailModelId() {
        return laptopPricedetailModelId;
    }

    /**
     * @param laptopPricedetailModelId the laptopPricedetailModelId to set
     */
    public void setLaptopPricedetailModelId(int laptopPricedetailModelId) {
        this.laptopPricedetailModelId = laptopPricedetailModelId;
    }

    /**
     * @return the laptopPriceDetailBuyingPrice
     */
    public BigDecimal getLaptopPriceDetailBuyingPrice() {
        return laptopPriceDetailBuyingPrice;
    }

    /**
     * @param laptopPriceDetailBuyingPrice the laptopPriceDetailBuyingPrice to set
     */
    public void setLaptopPriceDetailBuyingPrice(BigDecimal laptopPriceDetailBuyingPrice) {
        this.laptopPriceDetailBuyingPrice = laptopPriceDetailBuyingPrice;
    }

    /**
     * @return the laptopPriceDetailSellingPrice
     */
    public BigDecimal getLaptopPriceDetailSellingPrice() {
        return laptopPriceDetailSellingPrice;
    }

    /**
     * @param laptopPriceDetailSellingPrice the laptopPriceDetailSellingPrice to set
     */
    public void setLaptopPriceDetailSellingPrice(BigDecimal laptopPriceDetailSellingPrice) {
        this.laptopPriceDetailSellingPrice = laptopPriceDetailSellingPrice;
    }

    /**
     * @return the laptopPriceDetailMinSellingPrice
     */
    public BigDecimal getLaptopPriceDetailMinSellingPrice() {
        return laptopPriceDetailMinSellingPrice;
    }

    /**
     * @param laptopPriceDetailMinSellingPrice the laptopPriceDetailMinSellingPrice to set
     */
    public void setLaptopPriceDetailMinSellingPrice(BigDecimal laptopPriceDetailMinSellingPrice) {
        this.laptopPriceDetailMinSellingPrice = laptopPriceDetailMinSellingPrice;
    }

    /**
     * @return the laptopPriceDetailStatus
     */
    public int getLaptopPriceDetailStatus() {
        return laptopPriceDetailStatus;
    }

    /**
     * @param laptopPriceDetailStatus the laptopPriceDetailStatus to set
     */
    public void setLaptopPriceDetailStatus(int laptopPriceDetailStatus) {
        this.laptopPriceDetailStatus = laptopPriceDetailStatus;
    }
}
