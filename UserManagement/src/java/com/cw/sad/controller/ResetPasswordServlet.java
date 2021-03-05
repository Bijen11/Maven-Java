package com.cw.sad.controller;

import com.cw.sad.DAO.resetpasswordDAO;
import com.cw.sad.connection.ConnectionPro;
import com.cw.sad.model.User;
import java.io.IOException;
import static java.lang.System.out;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author acer
 */
public class ResetPasswordServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Fetching data from registration page

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");

        if ((!email.isEmpty()) && (!password.isEmpty()) && (!repassword.isEmpty())) {
            if (password.equals(repassword)) {
                User userModel = new User(email, password);
                userModel.setEmail(email);
                userModel.setPassword(password);
                //create a database model
                resetpasswordDAO regUser = new resetpasswordDAO(ConnectionPro.getConnection());
                try {
                    boolean set = regUser.resetpass(userModel);
                    if (set == true) {
                        response.sendRedirect("login.jsp");
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(ResetPasswordServlet.class.getName()).log(Level.SEVERE, null, ex);
                }

            }
        }

    }

}
