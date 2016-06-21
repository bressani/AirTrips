package br.com.airtrips.database.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataSource {
    private static Connection con;
    
    public DataSource() throws SQLException, ClassNotFoundException {
        String url = "jdbc:mysql://localhost:3306/airtrips";
        String user = "root";
        String pass = "#M666V#";
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, user, pass);        
    }
    
    public static Connection getCon() {
        return con;
    }
}
