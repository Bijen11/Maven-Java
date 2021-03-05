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

/**
 *
 * @author Rai jee
 */
public class EditUserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

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
            boolean success = bkdao.editUserInfo(use);
            if (success) {
                //out.println("Successfully edited");
                response.sendRedirect("admin.jsp");

            } else {
                out.println("Something is wrong");

            }

        }
    }

}
