package com.emergentes.dao;

import com.emergentes.modelo.Administrador;
import java.util.List;

/**
 *
 * @author JOSBER
 */
public interface AdministradorDAO {
    public void insert(Administrador administrador) throws Exception;
    public void update(Administrador administrador) throws Exception;
    public void delete(int id) throws Exception;
    public Administrador getById(int id) throws Exception;
    public List<Administrador> getAll() throws Exception;
}