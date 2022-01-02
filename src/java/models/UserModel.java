/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import com.lambdaworks.crypto.SCryptUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author user
 */
public class UserModel {
    
    public boolean addUser(String first_name,String middle_name ,String last_name, String username, String password, int role_ID) throws ClassNotFoundException, SQLException{
        
        //Adds user info into database
        
        Connection conn = null;
        PreparedStatement ps = null;
        boolean success = false;
        try{
            
            String query = "INSERT INTO users("
                    + "first_name,"
                    + "middle_name,"
                    + "last_name,"
                    + "username,"
                    + "password,"
                    + "role_ID)"
                    + "VALUES(?,?,?,?,?,?)";
            
            conn = ConnectionDB.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,first_name);
            ps.setString(2,middle_name);
            ps.setString(3,last_name);
            ps.setString(4,username);
            ps.setString(5,password);
            ps.setInt(6, role_ID);
            
            int row_affected = ps.executeUpdate();
            conn.close();
            if (row_affected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("UserRegistry Error: " + e);
        } finally {
            if (ps != null) {
                try {
                    ps.close();

                } catch (SQLException e) {
                    System.out.println("UserRegistry  Error: " + e);
                }
            }
            if (conn != null) {
                try {
                    conn.close();

                } catch (SQLException e) {
                    System.out.println("UserRegistry Error: " + e);
                }
            }
        }
        return success;
    }
    
    public boolean changePassword(String username,String curr_pass, String new_pass) throws SQLException, ClassNotFoundException{
       
        Connection conn = null;
        PreparedStatement ps = null;
       
        boolean success = false;
        
        try{
            
            String validate_query = "SELECT * FROM users WHERE "
                    + "username=?";
            
            conn = ConnectionDB.getConnection();
            ps = conn.prepareStatement(validate_query);
            ps.setString(1,username);
            System.out.println(curr_pass);
            System.out.println(new_pass);
            ResultSet rs=ps.executeQuery();
            rs.next();
            boolean matched = SCryptUtil.check(curr_pass, rs.getString("password"));
            if(matched){
                
                success = change(new_pass,username);
                
               
            }
            else{
                rs.next();
            }
            conn.close();
        }catch (SQLException e) {
            System.out.println("UserRegistry Error: " + e);
              
    }
        return success;
    }
    
    public boolean change(String new_pass, String username) throws ClassNotFoundException{
        
        boolean d = false;
          Connection conn = null;
          PreparedStatement ps = null;
          String hashed = SCryptUtil.scrypt(new_pass,16,16,16);
          System.out.println(hashed);
        try{
            
        String query = "UPDATE `users` SET "
                        + "`password`=?"
                        + "WHERE username=?";
                      
                conn = ConnectionDB.getConnection();      
                ps = conn.prepareStatement(query);
              
                ps.setString(1,hashed);
                ps.setString(2,username); 
                
                int row_affected = ps.executeUpdate();
                conn.close();
            if (row_affected != 0) {
                d = true;
            }
        }catch (SQLException e) {
            System.out.println("UserRegistry Error: " + e);
              
    }
        return d;
    }
}
    
        
        
        
        
   
    
    

