/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

/**
 *
 * @author Hanz
 */
public class LoginAttempts {
    public static boolean checkLock (String username) throws ClassNotFoundException, SQLException {
        boolean success  = false;
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            String query = "SELECT unlock_time FROM users WHERE username=?;";
            
            conn = ConnectionDB.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            rs.next();
            Timestamp unlock_time = rs.getTimestamp("unlock_time");
            long unlock_timeMilli = unlock_time.getTime();
            Date currDT = new Date();
            long currDTMilli = currDT.getTime();
            if (currDTMilli > unlock_timeMilli) {
                success = true;
            } else {
                System.out.println(currDTMilli);
                System.out.println(unlock_timeMilli);
            }
            System.out.println(success);
            conn.close();
            
        } catch (SQLException e) {
            System.out.println("Login Attempt (checkLock) Error: "+ e);
        }
        return success;
    }
    public static boolean reset (String username) throws ClassNotFoundException, SQLException {
        boolean success  = false;
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            String query = "UPDATE `users` SET `login_attempt`=? WHERE username = ?;";
            
            conn = ConnectionDB.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, 0);
            ps.setString(2, username);
            
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
            conn.close();
            
        } catch (SQLException e) {
            System.out.println("Login Attempt (RESET) Error: "+ e);
        }
        return success;
    }
        
    public static boolean add (String username, int login_attempt) throws ClassNotFoundException, SQLException {
        boolean success  = false;
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            int newlogin_attempt = ((login_attempt) + 1);
            if (newlogin_attempt < 3) {
                String query = "UPDATE `users` SET `login_attempt`=? WHERE username = ?;";

                conn = ConnectionDB.getConnection();
                ps = conn.prepareStatement(query);
                ps.setInt(1, newlogin_attempt);
                ps.setString(2, username);

                int rowAffected = ps.executeUpdate();
                if (rowAffected != 0) {
                    success = true;
                }
                conn.close();
            } else {
                Date currDT = new Date();
                long currDTMilli = currDT.getTime();
                long unlock_timeMilli = currDTMilli + 300000;
                Timestamp unlock_time = new Timestamp(unlock_timeMilli);
                
                String query = "UPDATE `users` SET `login_attempt`=?, `unlock_time`=? WHERE username = ?;";
                
                conn = ConnectionDB.getConnection();
                ps = conn.prepareStatement(query);
                ps.setInt(1, newlogin_attempt);
                ps.setTimestamp(2, unlock_time);
                ps.setString(3, username);
                
                int rowAffected = ps.executeUpdate();
                if (rowAffected != 0) {
                    success = true;
                }
                conn.close();
            }
        } catch (SQLException e) {
            System.out.println("Login Attempt (ADD) Error: "+ e);
        }
        return success;
    }
}
