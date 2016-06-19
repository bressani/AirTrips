/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.airtrips.database.dao;

import br.com.airtrips.database.objects.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Venator
 */
public class UserDAO implements GenericDAO {

    @Override
    public void insert(Object object) throws SQLException {
        DataSourceCon data = new DataSourceCon();
        Connection connection = data.getCon();

        User user = (User) object;

        String sql = "INSERT INTO `usuario`(`CPF`, `RG`, `Nome`, `Sexo`, `CEP`, `Endereço`,"
                + " `Telefone`, `Celular`, `cidade`, `Estado`, `Data_Nascimento`, `Idade`,"
                + " `Nome Pai`, `Nome Mae`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement stmt = connection.prepareStatement(sql);
        stmt.setString(1, user.getCpf());
        stmt.setString(2, user.getRg());
        stmt.setString(3, user.getNome());
        stmt.setString(4, user.getSexo());
        stmt.setString(5, user.getCep());
        stmt.setString(6, user.getEndereco());
        stmt.setString(7, user.getTel());
        stmt.setString(8, user.getCel());
        stmt.setString(9, user.getCidade());
        stmt.setString(10, user.getEstado());
        
        java.sql.Date nascimentoSql = java.sql.Date.valueOf(user.getDatanascimento());
        stmt.setDate(11, nascimentoSql);
        stmt.setInt(12, user.getIdade());
        stmt.setString(13, user.getPai());
        stmt.setString(14, user.getMae());
        
     

        stmt.executeUpdate();
        stmt.close();
        connection.close();
    }

    @Override
    public List search(long id) throws SQLException {
        List listObjects = null;

        return listObjects;
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
