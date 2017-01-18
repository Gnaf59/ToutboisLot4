/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.toutboisLot4.beans;

/**
 *
 * @author Matthieu
 */
public class LigneCommande {

    private Produit produit;
    private int quantite;

    public Produit getProduit() {
        return produit;
    }

    public void setProduit(Produit produit) {
        this.produit = produit;
    }

    public int getQuantite() {
        return quantite;
    }

    public void setQuantite(int quantite) {
        this.quantite = quantite;
    }

    public double calculTva() {
        return produit.getTvaProduit() *getQuantite() *produit.getPrixProduit() / 100;

    }

    public double calculTotalCommandeTTC() {
        return produit.getPrixProduit() * getQuantite() * (1 + (produit.getTvaProduit() / 100));

    }

    public double calculTotalCommandeHT() {
        return produit.getPrixProduit()*getQuantite();
    }

}
