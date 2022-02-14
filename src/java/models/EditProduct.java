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
public class EditProduct {
    
    
   //Updates the item in the database 
    
    public boolean editRegistry(
            int product_ID,
            int brand_ID,
            int category_ID,
            String product_name,
            int product_stocks,
            int product_IDcurr) throws ClassNotFoundException, SQLException {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            String query = "UPDATE `products` SET"
                    + "`product_ID`=?,"
                    + "`brand_ID`=?,"
                    + "`category_ID`=?,"
                    + "`product_name`=?,"
                    + "`product_stocks`=? "
                    + "WHERE `product_ID`=?";

            conn = ConnectionDB.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, product_ID);
            ps.setInt(2, brand_ID);
            ps.setInt(3, category_ID);
            ps.setString(4, product_name);
            ps.setInt(5, product_stocks);
            ps.setInt(6, product_IDcurr);
            
            int row_affected = ps.executeUpdate();
            conn.close();
            if (row_affected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("editRegistry Error: " + e);
        } finally {
            
            //Validates the changes that has been changed
            
            if (ps != null) {
                try {
                    ps.close();

                } catch (SQLException e) {
                    System.out.println("editRegistry Error: " + e);
                }
            }
            if (conn != null) {
                try {
                    conn.close();

                } catch (SQLException e) {
                    System.out.println("editRegistry Error: " + e);
                }
            }
        }
        return success;
    }
    
    //Adds values to the database
    
    public boolean addRegistry(
            int product_ID,
            int brand_ID,
            int category_ID,
            String product_name,
            int product_stocks) throws ClassNotFoundException, SQLException {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            String query = "INSERT INTO products ("
                    + "product_ID,"
                    + "brand_ID,"
                    + "category_ID,"
                    + "product_name,"
                    + "product_stocks) "
                    + "VALUES (?,?,?,?,?)";

            conn = ConnectionDB.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, product_ID);
            ps.setInt(2, brand_ID);
            ps.setInt(3, category_ID);
            ps.setString(4, product_name);
            ps.setInt(5, product_stocks);

            int row_affected = ps.executeUpdate();
            conn.close();
            if (row_affected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("addRegistry Error: " + e);
        } finally {
            
            //Validates if changes have been made
            
            if (ps != null) {
                try {
                    ps.close();

                } catch (SQLException e) {
                    System.out.println("addRegistry Error: " + e);
                }
            }
            if (conn != null) {
                try {
                    conn.close();

                } catch (SQLException e) {
                    System.out.println("addRegistry Error: " + e);
                }
            }
        }
        return success;
    }
    public boolean deleteRegistry(int product_ID)//Delete values to the database
            throws ClassNotFoundException, SQLException {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;

        try {
            String query = "delete from products where (product_ID= ?)";
                    
            conn = ConnectionDB.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, product_ID);
            
            
             int row_affected = ps.executeUpdate();
            conn.close();
            if (row_affected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("deleteRegistry Error: " + e);
        } finally {
            //Validates if changes have been made
            if (ps != null) {
                try {
                    ps.close();

                } catch (SQLException e) {
                    System.out.println("deleteRegistry Error: " + e);
                }
            }
            if (conn != null) {
                try {
                    conn.close();

                } catch (SQLException e) {
                    System.out.println("deleteRegistry Error: " + e);
                }
            }
        }
        return success;
        }
}
