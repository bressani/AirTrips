/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.airtrips.database.dao;

import br.com.airtrips.database.objects.Voo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Venator
 */
public class VooDAO implements GenericDAO {

    @Override
    public void insert(Object object) throws SQLException {
        DataSourceCon data = new DataSourceCon();
        Connection connection = data.getCon();

        Voo voo = (Voo) object;
        String sql = "INSERT INTO voo (id_voo, id_ponte_aerea,"
                + " companhia, aeronave, qtd_pessoas) VALUES (?,?,?,?,?)";
        PreparedStatement stm = connection.prepareStatement(sql);
        stm.setInt(1, voo.getIdVoo());
        stm.setInt(2, voo.getIdPonte());
        stm.setString(3, voo.getCompanhia());
        stm.setString(4, voo.getAeronave());
        stm.setInt(5, voo.getQtdPessoas());
        stm.executeUpdate();
    }

    @Override
    public List search(long id) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void update(long id, Object obj) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void remove(long id) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
