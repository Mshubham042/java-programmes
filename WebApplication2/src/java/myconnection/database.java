package myconnection;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author test
 */
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
public class database {
    
    Statement st;
   public void connect() throws SQLException
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/users?zeroDateTimeBehavior=convertToNull","root","");
            st = con.createStatement();
            System.out.println("connected");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(database.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public boolean checkuser(String uname,String upassword) throws SQLException
    {
        connect();
        
        ResultSet rs = st.executeQuery("select * from register_user where username='"+uname+"' and password='"+upassword+"'");
        
        if(rs.next())
        {
            return true;
        }
        
        return false;
        
    }
    
}  
    
//    public static void main(String[] args) throws SQLException {
//        
//        database db = new database();
//        db.connect();
//    }
    

