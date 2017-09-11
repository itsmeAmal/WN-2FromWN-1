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
public class Cart {

    private ArrayList<CartItem> cr;

    public Cart() {
        cr = new ArrayList<>();
    }

    public ArrayList<CartItem> getCart() {
        return cr;
    }
    
    public void addToCart(CartItem ci){

        for(int x=0;x<cr.size();x++){
            CartItem cartItem=cr.get(x);
            if (cartItem.getLaptopModelIdCart() == ci.getLaptopModelIdCart()) {
                ci.setLaptopQty(cartItem.getLaptopQty()+ci.getLaptopQty());
                cr.remove(cartItem);
            }
        }
        cr.add(ci);
    }
    public void removeItem(CartItem ci){
        for (int i = 0; i < cr.size(); i++) {
            CartItem cartItem=cr.get(i);
            if (cartItem.getLaptopModelIdCart()==ci.getLaptopModelIdCart()) {
                cr.remove(cartItem);
            }
        }
    }

    void removeAllItem() {
        for (int i = 0; i < cr.size(); i++) {
            CartItem ci=cr.get(i);
            
        }
        cr=null;
    }

}
