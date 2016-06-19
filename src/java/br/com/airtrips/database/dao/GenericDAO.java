/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.airtrips.database.dao;

import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Venator
 */
public interface GenericDAO {

    public void insert(Object object) throws SQLException;

    public List search(long id) throws SQLException;

    public void update(long id, Object obj) throws SQLException;

    public void remove(long id) throws SQLException;
}
