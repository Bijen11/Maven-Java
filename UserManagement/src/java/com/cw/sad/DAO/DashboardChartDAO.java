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
public class DashboardChartDAO {

    Connection con;

    public DashboardChartDAO(Connection con) {
        this.con = con;
    }

    public int getLoginData() throws SQLException {
        int TotalLogin = 0;
        String sql = "Select count(*) from history where activity=?";

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, "Logged into system");

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            TotalLogin = rs.getInt(1);

        }
        return TotalLogin;
    }

    public int getRegisterData() throws SQLException {
        int TotalRegister = 0;
        String sql = "Select count(*) from history where activity=?";

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, "Created new account");

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            TotalRegister = rs.getInt(1);

        }
        return TotalRegister;
    }

    public int getPasswordchangeData() throws SQLException {
        int Totaldata = 0;
        String sql = "Select count(*) from history where activity=?";

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, "changed password");

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            Totaldata = rs.getInt(1);

        }
        return Totaldata;
    }

    public int getSunData(String email) throws SQLException {
        int Totaldatasun = 0;
        String sql = "Select count(*) from history where activity=? AND name= ? AND date LIKE 'Sun%'";

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, "Logged into system");
        stmt.setString(2, email);

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            Totaldatasun = rs.getInt(1);

        }
        return Totaldatasun;
    }

    public int getMonData(String email) throws SQLException {
        int Totaldatamon = 0;
        String sql = "Select count(*) from history where activity=? AND name= ? AND date LIKE 'Mon%' ";

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, "Logged into system");
        stmt.setString(2, email);

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            Totaldatamon = rs.getInt(1);

        }

        return Totaldatamon;
    }

    public int getTueData(String email) throws SQLException {
        int Totaldatatue = 0;
        String sql = "Select count(*) from history where activity=? AND name= ? AND date LIKE 'Tue%'";

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, "Logged into system");
        stmt.setString(2, email);

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            Totaldatatue = rs.getInt(1);

        }
        return Totaldatatue;
    }

    public int getWedData(String email) throws SQLException {
        int Totaldatawed = 0;
        String sql = "Select count(*) from history where activity=? AND  name= ? AND date LIKE 'Wed%'";

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, "Logged into system");
        stmt.setString(2, email);

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            Totaldatawed = rs.getInt(1);

        }
        return Totaldatawed;
    }

    public int getThuData(String email) throws SQLException {
        int Totaldatathu = 0;
        String sql = "Select count(*) from history where activity=? AND name= ? AND date LIKE 'Thu%'";

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, "Logged into system");
        stmt.setString(2, email);

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            Totaldatathu = rs.getInt(1);

        }
        return Totaldatathu;
    }

    public int getFriData(String email) throws SQLException {
        int Totaldatafri = 0;
        String sql = "Select count(*) from history where activity=? AND name= ? AND date LIKE 'Fri%'";

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, "Logged into system");
        stmt.setString(2, email);

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            Totaldatafri = rs.getInt(1);

        }
        return Totaldatafri;
    }

    public int getSatData(String email) throws SQLException {
        int Totaldatasat = 0;
        String sql = "Select count(*) from history where activity=? AND name= ? AND date LIKE 'Sat%'";

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, "Logged into system");
        stmt.setString(2, email);

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            Totaldatasat = rs.getInt(1);

        }
        return Totaldatasat;
    }

}
