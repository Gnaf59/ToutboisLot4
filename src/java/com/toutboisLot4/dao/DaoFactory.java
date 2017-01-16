/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.toutboisLot4.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Dev
 */
public class DaoFactory {
    
    private String url,username,password;

    public DaoFactory(String url, String username, String password) {
        this.url = url;
        this.username = username;
        this.password = password;
    }
    
    public static DaoFactory getInstance()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch(ClassNotFoundException e)
        {
            
        }
        
        DaoFactory instance = new DaoFactory("jdbc:mysql://127.0.0.1:3306/toutboistest", "root", "");
        
        return instance;
    }
    
    public Connection getConnection() throws SQLException 
    {
        return DriverManager.getConnection(url, username, password);
    }
    
    public InterfaceFournisseurDAO getFournisseurDAO() {
        return new DaoFournisseur(this);
    }
}
