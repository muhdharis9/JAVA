/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package rent;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author USER
 */
public class Database {
  public  static final String DB_URL = "jdbc:mysql://localhost/oopproject";
  public  static final String USER = "root";
  public  static final String PASS = "";
  public  static Connection connectDB;
       
    public static Connection connectDB() throws ClassNotFoundException{
         Connection conn = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
            return conn;
            
        }
        catch(Exception err){
           JOptionPane.showMessageDialog(null,err.getMessage());
           return null;
        }
//        public Connection closeConnection() throws SQLException{
//        null.close();
//        JOptionPane.showMessageDialog(null,"Connection Closed");
//        return null;
//    
//    }
    }
}
