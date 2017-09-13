/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ifix.sessionCart;

import java.util.ArrayList;

/**
 *
 *
 */
public class laptopCart {

    private ArrayList<laptopCartModel> cr;

    public laptopCart() {
        cr = new ArrayList<>();
    }

    public ArrayList<laptopCartModel> getCart() {
        return cr;
    }

    public void addToCart(laptopCartModel ci) {
        for (int x = 0; x < cr.size(); x++) {
            laptopCartModel cartItem = cr.get(x);
            if (cartItem.getLaptopModelIdCart().equals(ci.getLaptopModelIdCart())) {
                ci.setLaptopQty(cartItem.getLaptopQty().add(ci.getLaptopQty()));
                cr.remove(cartItem);
            }
        }
        cr.add(ci);
    }

    public void removeItem(laptopCartModel ci) {
        for (int i = 0; i < cr.size(); i++) {
            laptopCartModel cartItem = cr.get(i);
            if (cartItem.getLaptopModelIdCart().equals(ci.getLaptopModelIdCart())) {
                cr.remove(cartItem);
            }
        }
    }

    void removeAllItem() {
        for (int i = 0; i < cr.size(); i++) {
            laptopCartModel ci = cr.get(i);
        }
        cr = null;
    }

}
