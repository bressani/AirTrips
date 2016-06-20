/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.airtrips.database.dao;

import br.com.airtrips.database.objects.Venda;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

/**
 *
 * @author Venator
 */
public class VendaDAO implements GenericDAO {
   
    private Connection con; 
    
    public VendaDAO() throws SQLException, ClassNotFoundException {
        con = new DataSource().getCon();
    }
    
    @Override
    public void insert(Object object) throws SQLException {       

        Venda venda = (Venda) object;

        String sql = "INSERT INTO `venda`(`id_venda`, `id_ponte_aerea`, `passageiro`,"
                + " `usuario_cpf`, `data_venda`, `qtd_passagens`,'valor') "
                + "VALUES (?,?,?,?,?,?,?)";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setInt(1, venda.getIdVenda());
        stm.setInt(2, venda.getIdPonteAerea());
        stm.setInt(3, venda.getIdPassageiro());
        stm.setString(4, venda.getCpf());
        java.sql.Date nascimentoSql = java.sql.Date.valueOf(LocalDate.now());
        stm.setDate(5, nascimentoSql);
        stm.setInt(6, venda.getQtdPassagens());
        stm.setDouble(7, venda.getValor());

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
