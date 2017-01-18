/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.toutboisLot4.dao;

import com.toutboisLot4.beans.Commande;
import com.toutboisLot4.beans.Fournisseur;
import com.toutboisLot4.dao.*;
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
public class DaoCommande implements InterfaceCommandeDAO {
    
    private DaoFactory daoFactory = DaoFactory.getInstance();
    
    public DaoCommande(DaoFactory daoFactory) {
        this.daoFactory = daoFactory;
    }
    
    @Override
    public List<Commande> listeCommande() {
        
        List<Commande> listeCommande = new ArrayList<Commande>();
        
        try {
            
            Connection connexion = daoFactory.getConnection();
            PreparedStatement preparedStatement = connexion.prepareStatement("SELECT idFournisseur,"
                    + "dateCommande,id_commande,libelle_EtatCommande,dateLivraisonCommande FROM commandes"
                    + " INNER JOIN etatcommande ON commandes.id_EtatCommande = etatcommande.id_EtatCommande"
                    + " WHERE commandes.idFournisseur IS NOT NULL");
            
            ResultSet resultatRequete = preparedStatement.executeQuery();
            
            while (resultatRequete.next()) {
                
                Commande commande = new Commande();
                
                InterfaceFournisseurDAO daofournisseur = daoFactory.getFournisseurDAO();
                
                commande.setId_commande(resultatRequete.getInt("id_commande"));
                commande.setEtatCommande(resultatRequete.getString("libelle_EtatCommande"));
                commande.setDateCommande(resultatRequete.getDate("dateCommande"));
                commande.setDateLivraisonCommande(resultatRequete.getDate("dateLivraisonCommande"));
                commande.setFournisseur(daofournisseur.rechercheFournisseurParNumero(resultatRequete.getInt("idFournisseur")));
                
                listeCommande.add(commande);
                
            }
            
        } catch (SQLException e) {
            
        }
        
        return listeCommande;
    }
    
}
