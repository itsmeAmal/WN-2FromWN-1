/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ifix.core;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 *
 * @author 4m4l
 */
public class sessionHandler implements HttpSessionListener{

    private static int activeSessions = 0; 
    
    @Override
    public void sessionCreated(HttpSessionEvent se) {
        activeSessions++;
        System.out.println("ses created");
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        if(activeSessions > 0){
            activeSessions--;
            System.out.println("ses destroyed");
        }
    }
    
    public static int getActiveSessions(){
    return activeSessions;
    }
    
    
    
}
