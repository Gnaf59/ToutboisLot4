/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.toutboisLot4.Utils;

/**
 *
 * @author Matthieu
 */
public class CreationFournisseurForm {

    public static void validationEmail(String email) throws FormulaireValidationException {
        if (email != null && email.trim().length() != 0) {
            if (!email.matches("([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)")) {
                throw new FormulaireValidationException("Merci de saisir une adresse mail valide.");
            }
        } else {
            throw new FormulaireValidationException("Merci de saisir une adresse mail.");
        }
    }

}
