/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.toutboisLot4.dao;

import com.toutboisLot4.beans.Produit;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Matthieu
 */
public class DaoProduit implements InterfaceProduitDAO {

    private DaoFactory daoFactory = DaoFactory.getInstance();

    public DaoProduit(DaoFactory daoFactory) {
        this.daoFactory = daoFactory;
    }

    @Override
    public List<Produit> listesProduit() {

        List<Produit> listesProduit = new ArrayList<Produit>();

        try {

            Connection connexion = daoFactory.getConnection();
            PreparedStatement preparedStatement = connexion.prepareStatement("SELECT "
                    + "codeProduit, libelleProduit, prixUnitaireProduit,description FROM produit"
                    + " WHERE codeProduit IS NOT NULL");

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {

                Produit produit = new Produit();

                produit.setCodeProduit(rs.getInt("codeProduit"));
                produit.setLibelleProduit(rs.getString("libelleProduit"));

                listesProduit.add(produit);

            }

        } catch (SQLException e) {
        }

        return listesProduit();
    }

}
