/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

import db.mydb;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Test
 */
public class product {
     
      ArrayList<String> prod = new ArrayList<String>();
     
       public ArrayList getproduct()
       {
           try {
               mydb db = new mydb();
               db.connect();
               ResultSet rs = db.st.executeQuery("select * from product");
               while(rs.next())
               {
                   String product = rs.getString("pro_title");
                   prod.add(product);
               }
           } catch (SQLException ex) {
               Logger.getLogger(product.class.getName()).log(Level.SEVERE, null, ex);
           }
           
           return prod;
       }
    
}
