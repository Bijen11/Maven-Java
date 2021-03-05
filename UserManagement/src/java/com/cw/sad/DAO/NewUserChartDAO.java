/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cw.sad.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author acer
 */
public class NewUserChartDAO {

    Connection con;

    public NewUserChartDAO(Connection con) {
        this.con = con;
    }

    public int getRegisterDataOfSunday() throws SQLException {
        int TotalRegisterSun = 0;
        String sql = "Select count(*) from history where activity=? And date LIKE 'Sun%'";

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, "Created new account");

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            TotalRegisterSun = rs.getInt(1);

        }
        return TotalRegisterSun;
    }

    public int getRegisterDataOfMonday() throws SQLException {
        int TotalRegisterMon = 0;
        String sql = "Select count(*) from history where activity=? And date LIKE 'Mon%'";

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, "Created new account");

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            TotalRegisterMon = rs.getInt(1);

        }
        return TotalRegisterMon;
    }

    public int getRegisterDataOfTuesday() throws SQLException {
        int TotalRegisterTue = 0;
        String sql = "Select count(*) from history where activity=? And date LIKE 'Tue%'";

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, "Created new account");

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            TotalRegisterTue = rs.getInt(1);

        }
        return TotalRegisterTue;
    }

    public int getRegisterDataOfWednesday() throws SQLException {
        int TotalRegisterWed = 0;
        String sql = "Select count(*) from history where activity=? And date LIKE 'Wed%'";

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, "Created new account");

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            TotalRegisterWed = rs.getInt(1);

        }
        return TotalRegisterWed;
    }

    public int getRegisterDataOfThursday() throws SQLException {
        int TotalRegisterThu = 0;
        String sql = "Select count(*) from history where activity=? And date LIKE 'Thu%'";

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, "Created new account");

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            TotalRegisterThu = rs.getInt(1);

        }
        return TotalRegisterThu;
    }

    public int getRegisterDataOfFriday() throws SQLException {
        int TotalRegisterFri = 0;
        String sql = "Select count(*) from history where activity=? And date LIKE 'Fri%'";

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, "Created new account");

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            TotalRegisterFri = rs.getInt(1);

        }
        return TotalRegisterFri;
    }

    public int getRegisterDataOfSaturday() throws SQLException {
        int TotalRegisterSat = 0;
        String sql = "Select count(*) from history where activity=? And date LIKE 'Sat%'";

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, "Created new account");

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            TotalRegisterSat = rs.getInt(1);

        }
        return TotalRegisterSat;
    }
}
