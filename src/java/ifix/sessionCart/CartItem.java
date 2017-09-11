/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ifix.sessionCart;

/**
 *
 *
 */
public class CartItem {
    private int laptopIdCart;
    private String laptopModelIdCart;
    private double laptopQty;
    private double laptopSellingPrice;

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
    public double getLaptopQty() {
        return laptopQty;
    }

    /**
     * @param laptopQty the laptopQty to set
     */
    public void setLaptopQty(double laptopQty) {
        this.laptopQty = laptopQty;
    }

    /**
     * @return the laptopSellingPrice
     */
    public double getLaptopSellingPrice() {
        return laptopSellingPrice;
    }

    /**
     * @param laptopSellingPrice the laptopSellingPrice to set
     */
    public void setLaptopSellingPrice(double laptopSellingPrice) {
        this.laptopSellingPrice = laptopSellingPrice;
    }


        
}
