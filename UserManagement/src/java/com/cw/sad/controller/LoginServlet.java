/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cw.sad.controller;

import com.cw.sad.DAO.LoginDAO;
import com.cw.sad.connection.ConnectionPro;
import com.cw.sad.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author acer
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //fetching data from login form

        String logemail = request.getParameter("email");
        String logpass = request.getParameter("password");

        LoginDAO db = new LoginDAO(ConnectionPro.getConnection());
        User user = db.login(logemail, logpass);

        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("logUser", user);
            if (user.getRole().equalsIgnoreCase("client")) {
                response.sendRedirect("profile.jsp");
            } else if (user.getRole().equals("admin")) {
                response.sendRedirect("AdminDashboard.jsp");
            } else {
                out.println("Permission denied");
            }

        } else {
            out.println("user not found");
        }

    }
}
