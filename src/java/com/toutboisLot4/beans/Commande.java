/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.toutboisLot4.beans;


import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;



/**
 *
 * @author Matthieu
 */
public class Commande{
    
    private int id_commande;
    private LocalDateTime dateCommande;
    private LocalDateTime dateLivraisonCommande;
    private String etatCommande;    
    private  LigneCommande ligneCommande;
    private Fournisseur fournisseur;
    
    
    
    

    public Fournisseur getFournisseur() {
        return fournisseur;
    }

    public void setFournisseur(Fournisseur fournisseur) {
        this.fournisseur = fournisseur;
    }

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

    public String getEtatCommande() {
        return etatCommande;
    }

    public void setEtatCommande(String etatCommande) {
        this.etatCommande = etatCommande;
    }

    public LocalDateTime getDateCommande() {
        return dateCommande;
    }

    public void setDateCommande(LocalDateTime dateCommande) {
        this.dateCommande = dateCommande;
    }

    public LocalDateTime getDateLivraisonCommande() {
        return dateLivraisonCommande;
    }

    public void setDateLivraisonCommande(LocalDateTime dateLivraisonCommande) {
        this.dateLivraisonCommande = dateLivraisonCommande;
    }

    public String getDateCommandeString()
    {
        String dateFormatted;
        try{
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm");       
        dateFormatted = dateCommande.format(formatter);
        }
        catch(NullPointerException e)
        {
            dateFormatted = "";
        }
        
        return dateFormatted;
    }
    
    public String getDateLivraisonCommandeString()
    {
        String dateFormatted;
        try{
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm");
        dateFormatted = dateLivraisonCommande.format(formatter);
        }
        catch(NullPointerException e)
        {
            dateFormatted = "";
        }
        return dateFormatted;
    }
    
}
