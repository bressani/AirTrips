package br.com.airtrips.database.dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DataSourceCon {

    private Connection con;

    public DataSourceCon() throws SQLException {
        
        try {
            String url = "jdbc:mysql://localhost:3306/airtrips";
            String user = "airtrips";
            String password = "airtrips";
            Class.forName("com.mysql.jdbc.Driver");
            this.con = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataSourceCon.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public Connection getCon() {
        return con;
    }
}
