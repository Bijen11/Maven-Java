/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cw.sad.controller;

import com.cw.sad.DAO.HistoryDAO;
import com.cw.sad.model.history;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author acer
 */
public class AdminHistoryServlet extends HttpServlet {

    /*
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            HistoryDAO hisdao= new HistoryDAO();
            
            List <history> al = hisdao.getHistory();
            request.setAttribute("history", al);
            RequestDispatcher req= request.getRequestDispatcher("Adminhistory.jsp");
            req.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AdminHistoryServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

     */
}
