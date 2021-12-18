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
import static java.util.Collections.list;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author Test
 */
public class product {
     
      ArrayList<String> prod = new ArrayList<String>();
      HashMap<String ,String[]> Products = new HashMap<String ,String[]>();
     
       public List getproduct()
       {
                    List<Map<String,List<List>>> mydata= new ArrayList<Map<String,List<List>>>();//This is the final list you need
                    Map<String, List<List>> map1 = new HashMap<String, List<List>>();//This is one instance of the  map you want to store in the above list.
                    List<List> arraylist1 = new ArrayList<List>();
                    List<List> price_list = new ArrayList<List>();
           
           try {
               mydb db = new mydb();
               db.connect();
               ResultSet rs = db.st.executeQuery("select * from product");
               while(rs.next())
               {
//                   String[] test = new String[20];
//                   test[0] = "hello";
//                   test[1] = "devsagar";
                   
                   
                   String product = rs.getString("pro_title");
                   String pro_price = rs.getString("pro_price");
                   String pro_desc = rs.getString("pro_desc");
                   String pro_color = rs.getString("pro_color");
                   
                  
                    //And so on..
                    
                    List<String> arraylist2 = new ArrayList<String>();
                    List<String> pricelist = new ArrayList<String>();
                    
                    pricelist.add(pro_price);
                    arraylist2.add(product);
                    
                    arraylist1.add(arraylist2);
                    price_list.add(pricelist);
                   
//                   prod.add(product);
//                   prod.add(pro_price);
//                   prod.add(pro_desc);
//                   prod.add(pro_color);
               }
                  map1.put("product",arraylist1);
                  map1.put("Price",price_list);
              
                    mydata.add(map1);
                    
                    return mydata;
                    
           } catch (SQLException ex) {
               Logger.getLogger(product.class.getName()).log(Level.SEVERE, null, ex);
           }
         
           return null;
//           return map1;
       }
       
//       public static void main(String[] args) {
//        
//           product pd = new product();
//           
//           List<Map<String,List<List>>> demo = new ArrayList<Map<String,List<List>>>();
//           
//            Map<String, List<List>> requiredata = new HashMap<String, List<List>>();
//            
//            
//           
////             System.out.println(pd.getproduct());
//            demo = pd.getproduct();
//           
//           
//            requiredata = demo.get(0);
//            
////             price_data = demo.get(1);
//            
//            System.out.println(requiredata.get("product"));
//            System.out.println("price is : " + requiredata.get("Price"));
           
//     }
    }
    

