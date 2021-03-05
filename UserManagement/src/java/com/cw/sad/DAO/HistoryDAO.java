/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cw.sad.DAO;

import com.cw.sad.model.User;
import java.sql.Connection;
import com.cw.sad.model.history;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author acer
 */
public class HistoryDAO {

    Connection con;

    public HistoryDAO(Connection con) {
        this.con = con;
    }

    public List<history> getHistory() throws SQLException {
        List<history> al = new ArrayList();
        String query = "select name,activity,date from history";
        PreparedStatement pt = this.con.prepareStatement(query);

        ResultSet result = pt.executeQuery();
        while (result.next()) {

            String email = result.getString("name");
            String activity = result.getString("activity");
            String date = result.getString("date");

            history history = new history(email, activity, date);
            al.add(history);

        }
        return al;
    }

    public List<history> getClientHistory(String email) throws SQLException {
        List<history> al = new ArrayList();
        User user = new User();
        String query = "select name,activity,date from history where name=?";
        PreparedStatement pt = this.con.prepareStatement(query);

        pt.setString(1, email);

        ResultSet result = pt.executeQuery();
        while (result.next()) {

            String name = result.getString("name");
            String activity = result.getString("activity");
            String date = result.getString("date");

            history history = new history(name, activity, date);
            al.add(history);

        }
        return al;
    }

}
