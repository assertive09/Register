package com.user;
import java.sql.*;
public class Conn {
    
    Connection c;
  
    public Conn(){
    try {
                Class.forName("com.mysql.jdbc.Driver");
                 c = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "admin");
             
            } catch (Exception e) {
                System.out.println(e);
            }
    }
}