/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.toutboisLot4.dao;

import com.toutboisLot4.beans.Fournisseur;
import java.util.List;

/**
 *
 * @author Dev
 */
public interface InterfaceFournisseurDAO {
    
    void ajouterFournisseur( Fournisseur fournisseur);
    void modifierFournisseur( Fournisseur fournisseur);
    void supprimerFournisseur( Fournisseur fournisseur);
    List<Fournisseur>listeFournisseur();
    Fournisseur rechercheFournisseurParNom(String nomFournisseur);
    Fournisseur rechercheFournisseurParNumero(int numeroFournisseur);
    
}
