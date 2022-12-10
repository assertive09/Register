package com.user;
import java.sql.*;
public class Conn {
    
    Connection c;
  
    public Conn(){
    try {
                Class.forName("com.mysql.jdbc.Driver");
                 c = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "");
             
            } catch (Exception e) {
                System.out.println(e);
            }
    }
}