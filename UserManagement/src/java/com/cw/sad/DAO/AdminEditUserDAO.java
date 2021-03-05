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
public class AdminEditUserDAO {

    Connection con;

    public AdminEditUserDAO(Connection con) {
        this.con = con;
    }

    //**************Editing user information******************************
    public boolean editUserInfo(User use) {
        boolean test = false;
        try {
            String query = "update user set name=?, email=?, password=?, dob=?, contact=?, address=?, role=? where id=?";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, use.getName());
            pt.setString(2, use.getEmail());
            pt.setString(3, use.getPassword());
            pt.setString(4, use.getDob());
            pt.setString(5, use.getContact());
            pt.setString(6, use.getAddress());
            pt.setString(7, use.getRole());
            pt.setInt(8, use.getId());
            pt.executeUpdate();

            test = true;

            if (test = true) {
                Date today = new Date();
                String query2 = " insert into history(name,activity,date) values(?,?,?)";
                PreparedStatement pt2 = this.con.prepareStatement(query2);
                pt2.setString(1, use.getEmail());
                pt2.setString(2, "Profile edited");
                pt2.setString(3, today.toString());
                pt2.executeUpdate();
            }

        } catch (Exception e) {
            e.printStackTrace();

        }

        return test;

    }
}
