/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.airtrips.database.dao;

import br.com.airtrips.database.objects.Aeroporto;
import br.com.airtrips.database.objects.Passageiro;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Administrador
 */
public class PassageiroDAO implements GenericDAO {
    
    private Connection con;
    
    
    public PassageiroDAO() throws SQLException, ClassNotFoundException {
        con = new DataSource().getCon();
    }

    @Override
    public void insert(Object object) throws SQLException {
        Passageiro pass = (Passageiro) object;

        String sql = "INSERT INTO passageiro(id_passageiro, cpf,"
                + " idade, sexo, necessidades_especias) VALUES (?,?,?,?,?)";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setInt(1, pass.getIdPassageiro());
        stm.setString(2, pass.getCpf());
        stm.setInt(3, pass.getIdade());
        stm.setObject(4, pass.getSexo());
        stm.setObject(5, pass.getNecessidadesEspeciais());;

        stm.executeUpdate();
        stm.close();
        con.close();
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
