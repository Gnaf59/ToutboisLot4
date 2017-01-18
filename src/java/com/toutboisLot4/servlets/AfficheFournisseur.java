/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.toutboisLot4.servlets;

import com.toutboisLot4.beans.Fournisseur;
import com.toutboisLot4.dao.DaoFactory;
import com.toutboisLot4.dao.DaoFournisseur;
import com.toutboisLot4.dao.InterfaceFournisseurDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Matthieu
 */
public class AfficheFournisseur extends HttpServlet {

    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        String identifiant = (String) session.getAttribute("login");
        
        if ("admin".equals(identifiant))
        {
            request.setAttribute("action", Integer.parseInt(request.getParameter("action")));
            DaoFactory daoFactory = DaoFactory.getInstance();
            List<Fournisseur> fournisseurListe = daoFactory.getFournisseurDAO().listeFournisseur();
            request.setAttribute("fournisseurs", fournisseurListe);
            request.getRequestDispatcher("/WEB-INF/AfficherFournisseur.jsp").forward(request, response);
        }
        else
        {
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
