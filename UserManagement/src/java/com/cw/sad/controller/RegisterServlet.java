/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cw.sad.controller;

import com.cw.sad.DAO.AddUserDAO;
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
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            //Fetching data from registration page
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String dob = request.getParameter("dob");
            String contact = request.getParameter("contact");
            String address = request.getParameter("address");
            String role = "client";

            //make user object
            User userModel = new User(name, email, password, dob, contact, address, role);
            //create a database model
            AddUserDAO regUser = new AddUserDAO(ConnectionPro.getConnection());
            if (regUser.saveUser(userModel)) {
                response.sendRedirect("login.jsp");
            } else {
                String errorMessage = "User Available";
                HttpSession regSession = request.getSession();
                regSession.setAttribute("RegError", errorMessage);
                response.sendRedirect("index.jsp");
            }

        }
    }

}
