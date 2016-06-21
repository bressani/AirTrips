/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.airtrips.database.dao;

import br.com.airtrips.database.objects.PonteAerea;
import br.com.airtrips.database.objects.Voo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Vector;

/**
 *
 * @author Felipe
 */
public class PonteAereaDAO implements GenericDAO {

    private Connection con;

    public PonteAereaDAO() throws SQLException, ClassNotFoundException {
        con = new DataSource().getCon();
    }

    @Override
    public void insert(Object object) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List search(long id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public PonteAerea searchPonte(int origem, int destino) throws SQLException {
        PonteAerea novo = new PonteAerea();
        String sql = "SELECT * FROM `ponte_aerea` WHERE `id_aeroporto_origem` =  ? AND `id_aeroporto_destino` = ?;";
        try (PreparedStatement stm = con.prepareStatement(sql)) {
            stm.setInt(1, origem);
            stm.setInt(2, destino);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {

                novo.setID_PONTE_AEREA(rs.getInt(1));
                novo.setID_AEROPORTO_ORIGEM(rs.getInt(2));
                novo.setID_AEROPORTO_DESTINO(rs.getInt(3));
                novo.setDISTANCIA(rs.getInt(4));
                novo.setQTD_ESCALAS(rs.getInt(5));
                novo.setID_AEROPORTO_ESCALA(rs.getInt(6));
            }
        } catch (SQLException ex) {
            System.err.println("Erro sql");
        }
        return novo;
    }

    public List search() throws SQLException {

        ArrayList<PonteAerea> pa = new ArrayList<PonteAerea>();
        String sql = "SELECT * FROM ponte_aerea";
        PreparedStatement stm = con.prepareStatement(sql);

        ResultSet rs = stm.executeQuery();

        while (rs.next()) {
            PonteAerea novo = new PonteAerea();
            novo.setID_PONTE_AEREA(rs.getInt(1));
            novo.setID_AEROPORTO_ORIGEM(rs.getInt(2));
            novo.setID_AEROPORTO_DESTINO(rs.getInt(3));
            novo.setDISTANCIA(rs.getInt(4));
            novo.setQTD_ESCALAS(rs.getInt(5));
            novo.setID_AEROPORTO_ESCALA(rs.getInt(6));
            pa.add(novo);
        }
        stm.close();
        con.close();

        return pa;
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
