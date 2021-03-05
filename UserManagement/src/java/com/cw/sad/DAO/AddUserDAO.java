/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cw.sad.DAO;

import com.cw.sad.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Date;

/**
 *
 * @author acer
 */
public class AddUserDAO {

    Connection con;

    public AddUserDAO(Connection con) {
        this.con = con;
    }
    //for register user 

    public boolean saveUser(User user) {
        boolean set = false;
        try {
            //Insert register data to database
            String query = "insert into user(name, email, password, dob, contact, address, role) values(?,?,?,?,?,?,?)";

            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, user.getName());
            pt.setString(2, user.getEmail());
            pt.setString(3, user.getPassword());
            pt.setString(4, user.getDob());
            pt.setString(5, user.getContact());
            pt.setString(6, user.getAddress());
            pt.setString(7, user.getRole());
            pt.execute();
            set = true;

            if (set = true) {
                Date today = new Date();
                String query2 = " insert into history(name,activity,date) values(?,?,?)";
                PreparedStatement pt2 = this.con.prepareStatement(query2);
                pt2.setString(1, user.getEmail());
                pt2.setString(2, "Created new account");
                pt2.setString(3, today.toString());
                pt2.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return set;
    }

}
