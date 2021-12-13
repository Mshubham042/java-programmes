/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

import db.mydb;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Test
 */
public class login {
    
    public boolean checklogin(String name,String Password)
    {
        try {
            mydb db = new mydb();
            db.connect();
            ResultSet rs = db.st.executeQuery("select * from users where username = '"+name+"' and password = '"+Password+"'");
            
            if(rs.next())
            {
               return true;  
            }
            else
            {
               return false;  
            }
             
            
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
}
