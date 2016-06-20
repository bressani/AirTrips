/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.airtrips.database.dao;

import br.com.airtrips.database.objects.Aeroporto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Venator
 */
public class AeroportoDAO implements GenericDAO {

    @Override
    public void insert(Object object) throws SQLException {
        DataSourceCon data = new DataSourceCon();
        Connection connection = data.getCon();

        Aeroporto aero = (Aeroporto) object;

        String sql = "INSERT INTO `aeroporto`(`id_aeroporto`, `id_ponte_aerea`,"
                + " `endereco`, `cidade`, `Estado`) VALUES (?,?,?,?,?)";
        PreparedStatement stm = connection.prepareStatement(sql);
        stm.setInt(1, aero.getIdAeroporto());
        stm.setInt(2, aero.getIdPonte());
        stm.setString(3, aero.getEndereco());
        stm.setString(4, aero.getCidade());
        stm.setString(5, aero.getPais());;

        stm.executeUpdate();
        stm.close();
        connection.close();
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
