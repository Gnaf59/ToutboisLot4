/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.toutboisLot4.servlets;

import com.toutboisLot4.beans.*;
import com.toutboisLot4.dao.DaoFactory;
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
public class AfficheProduit extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        String identifiant = (String) session.getAttribute("login");

        if ("admin".equals(identifiant)) {

            DaoFactory daoFactory = DaoFactory.getInstance();
            List<Produit> listeProduit = daoFactory.getProduitDAO().listesProduit();
            request.setAttribute("produits", listeProduit);

            request.getRequestDispatcher("/WEB-INF/AfficherProduit.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
        }

    }

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
