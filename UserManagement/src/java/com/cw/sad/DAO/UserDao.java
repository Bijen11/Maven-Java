/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cw.sad.DAO;

import com.cw.sad.model.User;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Rai jee
 */
public class UserDao {

    Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    //fetching all data from databases
    public List<User> getAllUsers() {
        List<User> user = new ArrayList<>();

        try {
            String query = "select * from user";
            PreparedStatement pt = this.con.prepareStatement(query);
            ResultSet rs = pt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String dob = rs.getString("dob");
                String contact = rs.getString("contact");
                String address = rs.getString("address");
                String role = rs.getString("role");

                User row = new User(id, name, email, password, dob, contact, address, role);
                user.add(row);
            }

        } catch (Exception e) {
            e.printStackTrace();

        }
        return user;

    }

    // *************************Making Single User Method****************************************
    public User getSingleUser(int id) {
        User us = null;
        try {
            String query = "select * from user where id=?";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setInt(1, id);
            ResultSet rs = pt.executeQuery();

            while (rs.next()) {
                int bid = rs.getInt("id");
                String bname = rs.getString("name");
                String bemail = rs.getString("email");
                String bpassword = rs.getString("password");
                String bdob = rs.getString("dob");
                String bcontact = rs.getString("contact");
                String baddress = rs.getString("address");
                String brole = rs.getString("role");

                us = new User(bid, bname, bemail, bpassword, bdob, bcontact, baddress, brole);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return us;

    }

}
