/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cw.sad.connection;

import java.sql.*;

/**
 *
 * @author acer
 */
public class ConnectionPro {

    private static Connection con;

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ums?serverTimezone=UTC", "root", "");

        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

}
