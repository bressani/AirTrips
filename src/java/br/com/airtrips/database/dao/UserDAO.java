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
    
    private Connection con;
    
    public UserDAO() throws SQLException, ClassNotFoundException {
        con = new DataSource().getCon();
    }

    @Override
    public void insert(Object object) throws SQLException {
       

        User user = (User) object;

        String sql = "INSERT INTO `usuario`(`CPF`, `RG`, `Nome`, `Sexo`, `CEP`, `Endereço`,"
                + " `Telefone`, `Celular`, `cidade`, `Estado`, `Data_Nascimento`, `Idade`,"
                + " `Nome Pai`, `Nome Mae`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, user.getCpf());
        stm.setString(2, user.getRg());
        stm.setString(3, user.getNome());
        stm.setString(4, user.getSexo());
        stm.setString(5, user.getCep());
        stm.setString(6, user.getEndereco());
        stm.setString(7, user.getTel());
        stm.setString(8, user.getCel());
        stm.setString(9, user.getCidade());
        stm.setString(10, user.getEstado());

        java.sql.Date nascimentoSql = java.sql.Date.valueOf(user.getDatanascimento());
        stm.setDate(11, nascimentoSql);
        stm.setInt(12, user.getIdade());
        stm.setString(13, user.getPai());
        stm.setString(14, user.getMae());

        stm.executeUpdate();
        stm.close();
        con.close();
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
