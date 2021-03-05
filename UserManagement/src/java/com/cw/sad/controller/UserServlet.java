/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cw.sad.controller;

import com.cw.sad.DAO.AdminEditUserDAO;
import com.cw.sad.DAO.UserDao;
import com.cw.sad.connection.ConnectionPro;
import com.cw.sad.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Rai jee
 */
public class UserServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserServlet</title>");
            out.println("</head>");
            out.println("<body>");

            //***********Fetching data From Edit From************(EditUserServlet)
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String dob = request.getParameter("dob");
            String contact = request.getParameter("contact");
            String address = request.getParameter("address");
            String role = "client";

            //***Creating User object and setting those values into the use objects********
            User use = new User();
            use.setName(name);
            use.setEmail(email);
            use.setPassword(password);
            use.setDob(dob);
            use.setContact(contact);
            use.setAddress(address);
            use.setRole(role);

            use.setId(id);

            //**********Creatin new UserDao objects***********
            AdminEditUserDAO bkdao = new AdminEditUserDAO(ConnectionPro.getConnection());
            UserDao bkdao1 = new UserDao(ConnectionPro.getConnection());
            boolean success = bkdao.editUserInfo(use);
            if (success) {
                request.getSession().setAttribute("logUser", bkdao1.getSingleUser(id));
                //out.println("Successfully edited");
                response.sendRedirect("dashboard.jsp");

            } else {
                out.println("Something is wrong");

            }

            out.println("</body>");
            out.println("</html>");
        }
    }

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
        processRequest(request, response);
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
        processRequest(request, response);
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
