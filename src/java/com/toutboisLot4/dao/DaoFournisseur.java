/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.toutboisLot4.dao;

import com.toutboisLot4.beans.Fournisseur;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dev
 */
public class DaoFournisseur implements InterfaceFournisseurDAO {

    private DaoFactory daoFactory;

    public DaoFournisseur(DaoFactory daoFactory) {
        this.daoFactory = daoFactory;
    }

    @Override
    public void ajouterFournisseur(Fournisseur fournisseur) {
        try {
            Connection connexion = daoFactory.getConnection();
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO fournisseur("
                    + "nomEntrepriseFournisseur, siretFournisseur, nomContactFournisseur,"
                    + " prenomContactFournisseur, numVoieFournisseur, adresseFournisseur,"
                    + " complementAdresseFournisseur, villeFournisseur, mailFournisseur,"
                    + " numeroTelFournisseur, paysFournisseur, codePostalFournisseur) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");

            preparedStatement.setString(1, fournisseur.getNomEntreprise());
            preparedStatement.setString(2, fournisseur.getSiretFournisseur());
            preparedStatement.setString(3, fournisseur.getNomContact());
            preparedStatement.setString(4, fournisseur.getPrenomContact());
            preparedStatement.setInt(5, fournisseur.getNumVoieFournisseur());
            preparedStatement.setString(6, fournisseur.getAdresseFournisseur());
            preparedStatement.setString(7, fournisseur.getComplementAdresseFournisseur());
            preparedStatement.setString(8, fournisseur.getVilleFournisseur());
            preparedStatement.setString(9, fournisseur.getMailFournisseur());
            preparedStatement.setString(10, fournisseur.getNumeroTelephone());
            preparedStatement.setString(11, fournisseur.getPaysFournisseur());
            preparedStatement.setString(12, fournisseur.getCodePostalFournisseur());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void modifierFournisseur(Fournisseur fournisseur) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void supprimerFournisseur(Fournisseur fournisseur) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Fournisseur> listeFournisseur() {
        
        List<Fournisseur> listeFournisseur = new ArrayList<Fournisseur>();
        
        try {

            Connection connexion = daoFactory.getConnection();
            PreparedStatement preparedStatement = connexion.prepareStatement("SELECT idFournisseur, nomEntrepriseFournisseur, siretFournisseur,"
                    + " nomContactFournisseur, prenomContactFournisseur, numVoieFournisseur,"
                    + " adresseFournisseur, complementAdresseFournisseur, mailFournisseur,"
                    + " numeroTelFournisseur, villeFournisseur, paysFournisseur, codePostalFournisseur "
                    + "FROM fournisseur");

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                Fournisseur fournisseur = new Fournisseur();

                fournisseur.setIdFournisseur(rs.getInt("idFournisseur"));
                fournisseur.setNomEntreprise(rs.getString("nomEntrepriseFournisseur"));
                fournisseur.setSiretFournisseur(rs.getString("siretFournisseur"));
                fournisseur.setNomContact(rs.getString("nomContactFournisseur"));
                fournisseur.setPrenomContact(rs.getString("prenomContactFournisseur"));
                fournisseur.setNumVoieFournisseur(rs.getInt("numVoieFournisseur"));
                fournisseur.setAdresseFournisseur(rs.getString("adresseFournisseur"));
                fournisseur.setComplementAdresseFournisseur(rs.getString("complementAdresseFournisseur"));
                fournisseur.setMailFournisseur(rs.getString("mailFournisseur"));
                fournisseur.setNumeroTelephone(rs.getString("numeroTelFournisseur"));
                fournisseur.setVilleFournisseur(rs.getString("villeFournisseur"));
                fournisseur.setPaysFournisseur(rs.getString("paysFournisseur"));
                fournisseur.setCodePostalFournisseur(rs.getString("codePostalFournisseur"));

                listeFournisseur.add(fournisseur);

            }

        } catch (SQLException e) {

        }
        
        return listeFournisseur;
    }

    @Override
    public Fournisseur rechercheFournisseurParNom(String nomFournisseur) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Fournisseur rechercheFournisseurParNumero(int numeroFournisseur) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//        try {
//            Connection connexion = daoFactory.getConnection();
//            PreparedStatement preparedStatement = connexion.prepareStatement("SELECT idFournisseur, nomEntrepriseFournisseur, siretFournisseur,"
//                    + " nomContactFournisseur, prenomContactFournisseur, numVoieFournisseur,"
//                    + " adresseFournisseur, complementAdresseFournisseur, mailFournisseur,"
//                    + " numeroTelFournisseur, villeFournisseur, paysFournisseur, codePostalFournisseur "
//                    + "FROM fournisseur WHERE idFournisseur = ?");
//            
//            preparedStatement.setInt(1, numeroFournisseur);
//            
//            
//        } 
//        catch (SQLException e) 
//        {
//            
//        }
    }

}
