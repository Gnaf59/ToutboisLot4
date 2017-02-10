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

    public void validationEmail(String email) throws FormulaireValidationException {
        if (email != null && email.trim().length() != 0) {
            if (!email.matches("([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)")) {
                throw new FormulaireValidationException("Merci de saisir une adresse mail valide.");
            }
        } else {
            throw new FormulaireValidationException("Merci de saisir une adresse mail.");
        }
    }

    public void validationCodePostal(String codeCp) throws FormulaireValidationException {
        if (codeCp != null && codeCp.trim().length() != 0) {
            if (!codeCp.matches("^\\d+$")) {
                throw new FormulaireValidationException(" doit uniquement contenir des chiffres.");
            } else if (codeCp.length() < 5) {
                throw new FormulaireValidationException(" doit contenir au moins 5 chiffres.");
            }
        } else {
            throw new FormulaireValidationException(" a saisir merci.");
        }
    }

    public void validationVoie(String champsVoie) throws FormulaireValidationException {
        if (!champsVoie.equals("")) {
            if (!champsVoie.matches("^\\d+$")) {
                throw new FormulaireValidationException(" doit  contenir des chiffres.");
            } else if (champsVoie.length() == 5) {
                throw new FormulaireValidationException(" ne doit pas contenir plus de 4 chiffres.");
            }
        } else {
            throw new FormulaireValidationException(" a saisir merci.");
        }
    }

    public void validationChampsGlobal(String champsGlobal) throws FormulaireValidationException {
        if (champsGlobal != null) {
            if (!champsGlobal.matches("^[\\p{L} .'-]+$")) {
                throw new FormulaireValidationException(" doit uniquement contenir des lettres.");
            } else if (champsGlobal.length() < 5) {
                throw new FormulaireValidationException(" doit contenir au moins 5 caractères.");
            }
        } else {
            throw new FormulaireValidationException("Merci de saisir les informations obligatoires ");
        }
    }

    public void validationSiret(String codeSiret) throws FormulaireValidationException {
        if (!codeSiret.equals("")) {
            if (!codeSiret.matches("^\\d+$")) {
                throw new FormulaireValidationException(" doit  contenir 14 des chiffres.");
            } else if (codeSiret.length() == 15) {

                throw new FormulaireValidationException(" doit contenir 14 chiffres.");
            }
        } else {
            throw new FormulaireValidationException(" a saisir merci.");
        }
    }

}
