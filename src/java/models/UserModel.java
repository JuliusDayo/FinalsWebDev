/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author user
 */
public class UserModel {
    
    public boolean addUser(String first_name,String middle_name ,String last_name, String username, String password, int role_ID) throws ClassNotFoundException, SQLException{
        
        
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
}
    
        
        
        
        
   
    
    

