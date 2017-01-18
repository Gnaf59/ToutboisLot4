/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.toutboisLot4.dao;

import com.toutboisLot4.beans.Produit;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Matthieu
 */
public class DaoProduit implements InterfaceProduitDAO {

    private DaoFactory daoFactory;

    public DaoProduit(DaoFactory daoFactory) {
        this.daoFactory = daoFactory;
    }

    @Override
    public void lectureProduit(Produit produit) {
       /** try {
            Connection connection = daoFactory.getConnection();
            PreparedStatement preparedstatement = connexion.prepareStatement
            ("SELECT codeProduit, libelleProduit, stockProduit, prixUnitaireProduit, "
                    + "remiseProduit, description,Image FROM produit");
        } catch (SQLException e) {
            e.printStackTrace();
        }*/
    }

}
