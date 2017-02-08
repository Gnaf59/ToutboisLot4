/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.toutboisLot4.servlets;

import com.toutboisLot4.beans.Fournisseur;
import com.toutboisLot4.dao.DaoFactory;
import com.toutboisLot4.dao.InterfaceFournisseurDAO;
import com.toutboisLot4.Utils.CreationFournisseurForm;
import com.toutboisLot4.Utils.FormulaireValidationException;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dev
 */
public class AjoutFournisseur extends HttpServlet {

    private InterfaceFournisseurDAO daoFournisseur;
    public static final String VUE_SUCCES = "/WEB-INF/AfficherFournisseur.jsp";
    public static final String VUE_FORM = "/WEB-INF/AjoutFournisseur.jsp";

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        String identifiant = (String) session.getAttribute("login");

        if ("admin".equals(identifiant)) {
            request.getRequestDispatcher(VUE_FORM).forward(request, response);
        } else {
            request.getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Fournisseur fournisseur = new Fournisseur();
        boolean erreur = false;

        fournisseur.setNomEntreprise(request.getParameter("nomEntrepriseFournisseur"));
        fournisseur.setSiretFournisseur(request.getParameter("siretFournisseur"));
        fournisseur.setNomContact(request.getParameter("nomContactFournisseur"));
        fournisseur.setPrenomContact(request.getParameter("prenomContactFournisseur"));
        fournisseur.setNumVoieFournisseur(Integer.parseInt(request.getParameter("numVoieFournisseur")));
        fournisseur.setAdresseFournisseur(request.getParameter("adresseFournisseur"));
        fournisseur.setComplementAdresseFournisseur(request.getParameter("complementAdresseFournisseur"));
        fournisseur.setMailFournisseur(request.getParameter("mailFournisseur"));
        fournisseur.setNumeroTelephone(request.getParameter("numeroTelFournisseur"));
        fournisseur.setVilleFournisseur(request.getParameter("villeFournisseur"));
        fournisseur.setPaysFournisseur(request.getParameter("paysFournisseur"));
        fournisseur.setCodePostalFournisseur(request.getParameter("codePostalFournisseur"));

        try {
            CreationFournisseurForm.validationEmail(fournisseur.getMailFournisseur());
        } catch (FormulaireValidationException e) {
            request.setAttribute("mailInvalide", e.getMessage());
            erreur = true;
        }

        if (erreur == false) {
            daoFournisseur.ajouterFournisseur(fournisseur);
            DaoFactory daoFactory = DaoFactory.getInstance();
            List<Fournisseur> fournisseurListe = daoFactory.getFournisseurDAO().listeFournisseur();
            request.setAttribute("fournisseurs", fournisseurListe);
            request.setAttribute("action", 2);
            request.getRequestDispatcher(VUE_SUCCES).forward(request, response);

        } else {

            request.getRequestDispatcher(VUE_FORM).forward(request, response);
        }

    }

    @Override
    public void init() throws ServletException {
        DaoFactory daoFactory = DaoFactory.getInstance();
        this.daoFournisseur = daoFactory.getFournisseurDAO();
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
