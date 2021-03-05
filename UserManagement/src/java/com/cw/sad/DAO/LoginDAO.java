/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cw.sad.DAO;

import com.cw.sad.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

/**
 *
 * @author acer
 */
public class LoginDAO {

    Connection con;

    public LoginDAO(Connection con) {
        this.con = con;
    }

    //Loginnnnnnnnnnnnnnn
    public User login(String email, String pass) {

        User usr = null;
        boolean set;

        try {
            String query = "select * from user where email=? and password=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, pass);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                usr = new User();
                usr.setId(rs.getInt("id"));
                usr.setName(rs.getString("name"));
                usr.setEmail(rs.getString("email"));
                usr.setPassword(rs.getString("password"));
                usr.setDob(rs.getString("dob"));
                usr.setContact(rs.getString("contact"));
                usr.setAddress(rs.getString("address"));
                usr.setRole(rs.getString("role"));
                set = true;

            }

            if (set = true) {
                Date today = new Date();
                String query2 = " insert into history(name,activity,date) values(?,?,?)";
                PreparedStatement pt2 = this.con.prepareStatement(query2);
                pt2.setString(1, usr.getEmail());
                pt2.setString(2, "Logged into system");
                pt2.setString(3, today.toString());
                pt2.executeUpdate();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return usr;
    }

    String login(User us) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
