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
public class AdminDeleteUserDAO {

    Connection con;

    public AdminDeleteUserDAO(Connection con) {
        this.con = con;
    }

    public void deleteUser(int id) {
        boolean set = false;

        try {

            String query = "delete from user where id=?";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setInt(1, id);
            pt.execute();
            set = true;

        } catch (Exception e) {
            e.printStackTrace();

        }

    }

}
