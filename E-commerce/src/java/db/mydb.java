/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package db;

/**
 *
 * @author Test
 */
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
public class mydb {
    
      public Statement st;
       
   public void connect() throws SQLException
    {
        
           try {
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fileupload?zeroDateTimeBehavior=convertToNull","root","");
               st = con.createStatement();
               System.out.println("connected");
           } catch (ClassNotFoundException ex) {
               Logger.getLogger(mydb.class.getName()).log(Level.SEVERE, null, ex);
           }
        
    }
   
    public static void main(String[] args) {
        
           try {
               mydb obj1 = new mydb();
               obj1.connect();
           } catch (SQLException ex) {
               Logger.getLogger(mydb.class.getName()).log(Level.SEVERE, null, ex);
           }
    }
    
}
