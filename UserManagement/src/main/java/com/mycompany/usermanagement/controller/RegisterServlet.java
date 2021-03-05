/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.usermanagement.controller;

import com.mycompany.usermanagement.dao.RegisterDao;
import com.mycompany.usermanagement.model.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sonam
 */
@WebServlet(name = "register", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {

    RegisterDao dao = new RegisterDao();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String uname = request.getParameter("uname");
        String email = request.getParameter("email");
        String strcontact = request.getParameter("contact");
        long contact = Long.parseLong(strcontact);
        String address = request.getParameter("address");
        String pword = request.getParameter("pword");
        String pwordconf = request.getParameter("pwordconf");
        java.util.Date date = new java.util.Date();

        java.text.SimpleDateFormat sdf
                = new java.text.SimpleDateFormat("yyyy-MM-dd");

        String dob = sdf.format(date);
        String gender = request.getParameter("gender");

//        if (!email.matches("^[\\\\w!#$%&’*+/=?`{|}~^-]+(?:\\\\.[\\\\w!#$%&’*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\\\.)+[a-zA-Z]{2,6}$")) {
//            String errorMessage = "Invalid Email Address";
//            HttpSession regSession = request.getSession();
//            regSession.setAttribute("RegErr", errorMessage);
//                
//        } 
//        if (!strcontact.matches("^[0-9]{10}$"));
//        {
//            String errorMessage = "Invalid Contact Number";
//            HttpSession regSession = request.getSession();
//            regSession.setAttribute("RegErr", errorMessage);            
//        }
//        System.out.println(!strcontact.matches("^[0-9]{10}$"));
//        if (pword.equals(pwordconf));
//        {
//            String errorMessage = "Your Passwords Do Not Match!";
//            HttpSession regSession = request.getSession();
//            regSession.setAttribute("RegErr", errorMessage);
//             
//        }
//        System.out.println(pword.equals(pwordconf));
//        if (!pword.matches("(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=\\S+$).{8,}")) {
//            String errorMessage = "Your password must be atleast 8 characters long and must contain atleast one number, one Uppercase letter and one lowercase letter";
//            HttpSession regSession = request.getSession();
//            regSession.setAttribute("RegErr", errorMessage);
//            
//        }
        User user = new User();

        user.setFname(fname);
        user.setLname(lname);
        user.setUname(uname);
        user.setEmail(email);
        user.setContact(contact);
        user.setAddress(address);
        user.setPword(pword);
        user.setPwordconf(pwordconf);
        user.setDob(dob);
        user.setGender(gender);
        System.out.println(user.getAddress());

        boolean responseult = dao.insert(user);
        if (responseult) {
            HttpSession session = request.getSession();
            session.setAttribute("username", uname);
            response.sendRedirect("clientDashboard.jsp");
        } else {
            String errorMessage = "Check your credentials";
            HttpSession regSession = request.getSession();
            regSession.setAttribute("RegErr", errorMessage);   
            response.sendRedirect("register.jsp");

        }

    }

}
