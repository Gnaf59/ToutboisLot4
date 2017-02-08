/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.toutboisLot4.servlets;

import com.toutboisLot4.beans.Fournisseur;
import com.toutboisLot4.dao.DaoFactory;
import com.toutboisLot4.dao.InterfaceFournisseurDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gauthier
 */
public class ModifierFournisseur extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private InterfaceFournisseurDAO daoFournisseur;

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
        request.getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
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
        
        fournisseur.setIdFournisseur(Integer.parseInt(request.getParameter("idFournisseur")));
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
        
        
        daoFournisseur.modifierFournisseur(fournisseur);
        
        List<Fournisseur> fournisseurs = daoFournisseur.listeFournisseur();
        request.setAttribute("fournisseurs", fournisseurs);
        
        request.setAttribute("action", 0);
        
        request.getRequestDispatcher("/WEB-INF/AfficherFournisseur.jsp").forward(request, response);
    }
    
    @Override
    public void init() throws ServletException {
        DaoFactory daoFactory = DaoFactory.getInstance();
        this.daoFournisseur=daoFactory.getFournisseurDAO();
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
