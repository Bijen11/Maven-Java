/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cw.sad.DAO;

import com.cw.sad.model.User;
import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author acer
 */
public class resetpasswordDAO {

    Connection con;

    public resetpasswordDAO(Connection con) {
        this.con = con;
    }

    public boolean resetpass(User userModel) throws SQLException {
        boolean set = false;

        String q = "update user set password=? where email=?";
        PreparedStatement pt = this.con.prepareStatement(q);
        pt.setString(1, userModel.getPassword());
        pt.setString(2, userModel.getEmail());
        pt.executeUpdate();
        set = true;

        if (set = true) {
            Date today = new Date();
            String query2 = " insert into history(name,activity,date) values(?,?,?)";
            PreparedStatement pt2 = this.con.prepareStatement(query2);
            pt2.setString(1, userModel.getEmail());
            pt2.setString(2, "changed password");
            pt2.setString(3, today.toString());
            pt2.executeUpdate();
        }

        return set;
    }
}
