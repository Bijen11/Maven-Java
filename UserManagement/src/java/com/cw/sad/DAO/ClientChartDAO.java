/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cw.sad.DAO;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author acer
 */
public class ClientChartDAO {

    Connection con;

    public ClientChartDAO(Connection con) {
        this.con = con;
    }

    public int getLoginNum(String email) throws SQLException {
        int TotalLogin = 0;
        String sql = "Select count(*) from history where activity=? and name=?";

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, "Logged into system");
        out.println(email);
        stmt.setString(2, email);

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            TotalLogin = rs.getInt(1);

        }

        return TotalLogin;
    }

    public int getResetNum(String email) throws SQLException {
        int TotalReset = 0;
        String sql = "Select count(*) from history where activity=? and name = ?";

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, "changed password");
        stmt.setString(2, email);

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            TotalReset = rs.getInt(1);

        }

        return TotalReset;
    }

    public int getEditNum(String email) throws SQLException {
        int TotalEdit = 0;
        String sql = "Select count(*) from history where activity=? and name = ?";

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, "Profile edited");
        stmt.setString(2, email);

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            TotalEdit = rs.getInt(1);

        }
        return TotalEdit;
    }

}
