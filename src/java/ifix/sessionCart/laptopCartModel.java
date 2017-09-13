/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ifix.sessionCart;

import java.math.BigDecimal;

/**
 *
 *
 */
public class laptopCartModel {
    private int laptopIdCart;
    private String laptopModelIdCart;
    private BigDecimal laptopQty;
    private BigDecimal laptopSellingPrice;

    /**
     * @return the laptopIdCart
     */
    public int getLaptopIdCart() {
        return laptopIdCart;
    }

    /**
     * @param laptopIdCart the laptopIdCart to set
     */
    public void setLaptopIdCart(int laptopIdCart) {
        this.laptopIdCart = laptopIdCart;
    }

    /**
     * @return the laptopModelIdCart
     */
    public String getLaptopModelIdCart() {
        return laptopModelIdCart;
    }

    /**
     * @param laptopModelIdCart the laptopModelIdCart to set
     */
    public void setLaptopModelIdCart(String laptopModelIdCart) {
        this.laptopModelIdCart = laptopModelIdCart;
    }

    /**
     * @return the laptopQty
     */
    public BigDecimal getLaptopQty() {
        return laptopQty;
    }

    /**
     * @param laptopQty the laptopQty to set
     */
    public void setLaptopQty(BigDecimal laptopQty) {
        this.laptopQty = laptopQty;
    }

    /**
     * @return the laptopSellingPrice
     */
    public BigDecimal getLaptopSellingPrice() {
        return laptopSellingPrice;
    }

    /**
     * @param laptopSellingPrice the laptopSellingPrice to set
     */
    public void setLaptopSellingPrice(BigDecimal laptopSellingPrice) {
        this.laptopSellingPrice = laptopSellingPrice;
    }


        
}
