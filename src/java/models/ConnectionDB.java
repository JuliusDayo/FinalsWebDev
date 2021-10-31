/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author user
 */
public class ConnectionDB {
    

        static Connection conn;
        public static Connection getConnection() throws ClassNotFoundException, SQLException{


        try{
        String driver = "com.mysql.cj.jdbc.Driver";
        Class.forName(driver);
        
        String url = "jdbc:mysql://localhost/midterm";
        conn = (Connection) DriverManager.getConnection(url, "root", "");
        
    }catch (SQLException e){
        System.out.println("SQLException: " + e.getMessage());
    }
        return conn;
    }
}
