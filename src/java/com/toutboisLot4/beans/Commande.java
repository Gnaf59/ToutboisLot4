/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.toutboisLot4.beans;

import java.sql.Date;



/**
 *
 * @author Matthieu
 */
public class Commande{
    
    private int id_commande;
    private Date dateCommande;
    private Date dateLivraisonCommande;
    private int id_EtatCommande;
    private int idFournisseur;
    private  LigneCommande ligneCommande;

    public int getId_commande() {
        return id_commande;
    }

    public LigneCommande getLigneCommande() {
        return ligneCommande;
    }

    public void setLigneCommande(LigneCommande ligneCommande) {
        this.ligneCommande = ligneCommande;
    }

    public void setId_commande(int id_commande) {
        this.id_commande = id_commande;
    }

    public Date getDateCommande() {
        return dateCommande;
    }

    public void setDateCommande(Date dateCommande) {
        this.dateCommande = dateCommande;
    }

    public Date getDateLivraisonCommande() {
        return dateLivraisonCommande;
    }

    public void setDateLivraisonCommande(Date dateLivraisonCommande) {
        this.dateLivraisonCommande = dateLivraisonCommande;
    }

    public int getId_EtatCommande() {
        return id_EtatCommande;
    }

    public void setId_EtatCommande(int id_EtatCommande) {
        this.id_EtatCommande = id_EtatCommande;
    }

    public int getIdFournisseur() {
        return idFournisseur;
    }

    public void setIdFournisseur(int idFournisseur) {
        this.idFournisseur = idFournisseur;
    }
    
    
    
    
    
}
