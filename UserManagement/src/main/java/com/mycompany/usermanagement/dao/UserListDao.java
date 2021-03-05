/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.usermanagement.dao;

import com.mycompany.usermanagement.model.BlockUser;
import com.mycompany.usermanagement.model.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Yawan
 */
public class UserListDao {

    private String url = "jdbc:mysql://localhost:3306/usermanagement";
    private String username = "root";
    private String password = "";
    private Connection con;

    protected void connect() throws SQLException {
        if (con == null || con.isClosed()) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                throw new SQLException(e);
            }
            con = DriverManager.getConnection(url, username, password);
        }
    }

    protected void disconnect() throws SQLException {
        if (con != null && con.isClosed()) {
            con.close();
        }
    }

    public boolean insertUser(User user) throws SQLException {
        String sql = "INSERT INTO user(fname, lname, username, password,email,contact,dob,address,gender,is_admin) values(?,?,?,?,?,?,?,?,?,?)";
        connect();

        PreparedStatement statement = con.prepareStatement(sql);
        statement.setString(1, user.getFname());
        statement.setString(2, user.getLname());
        statement.setString(3, user.getUname());
        statement.setString(4, user.getPword());
        statement.setString(5, user.getEmail());
        statement.setLong(6, user.getContact());
        statement.setString(7, user.getDob());
        statement.setString(8, user.getAddress());
        statement.setString(9, user.getGender());
        statement.setInt(10, user.getUserType());

        boolean rowInserted = statement.executeUpdate() > 0;

        statement.close();
        disconnect();
        return rowInserted;
    }

    public List<User> listAllUser() throws SQLException {
        List<User> listUser = new ArrayList<>();

        String sql = "SELECT * FROM user";

        connect();
        Statement statement = con.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);

        while (resultSet.next()) {
            int User_id = resultSet.getInt("user_id");
            String fname = resultSet.getString("fname");
            String lname = resultSet.getString("lname");
            String uname = resultSet.getString("username");
            String pass = resultSet.getString("password");
            String email = resultSet.getString("email");
            long contact = resultSet.getLong("contact");
            String dob = resultSet.getString("dob");
            String address = resultSet.getString("address");
            String gender = resultSet.getString("gender");

            User user = new User(User_id, fname, lname, uname, pass, email, contact, dob, address, gender);
            listUser.add(user);
        }
        resultSet.close();
        statement.close();
        disconnect();
        return listUser;
    }

    public boolean deleteUser(User user, String uname) throws SQLException {
        String sql = "DELETE FROM user where User_id = ?";
        connect();

        PreparedStatement statement = con.prepareStatement(sql);
        statement.setInt(1, user.getId());
        
        PreparedStatement stmt3 = con.prepareStatement("SELECT user_id from `user` WHERE username = ?");
        stmt3.setString(1, uname);

        boolean rowDeleted = statement.executeUpdate() > 0;

        if (rowDeleted) {
            ResultSet rs3 = stmt3.executeQuery();
            if (rs3.next()) {
                int id = rs3.getInt(1);
                System.out.println(id);
                PreparedStatement stmt2 = con.prepareStatement("INSERT INTO `history` (`user_id`, `username`, `activity`) VALUES (?,?,?)");
                stmt2.setInt(1, id);
                stmt2.setString(2, uname);
                stmt2.setString(3, "Deleted a User");
                int rs2 = stmt2.executeUpdate();

            }
        }
        statement.close();
        disconnect();
        return rowDeleted;

    }

    public boolean updateUser(User user) throws SQLException {
        String sql = "UPDATE user SET fname=?, lname=?, username=?, password=?, email=?, contact=?, dob=?, address=?, gender=?, is_admin = ? WHERE user_id =?";
        connect();

        PreparedStatement statement = con.prepareStatement(sql);

        statement.setString(1, user.getFname());
        statement.setString(2, user.getLname());
        statement.setString(3, user.getUname());
        statement.setString(4, user.getPword());
        statement.setString(5, user.getEmail());
        statement.setLong(6, user.getContact());
        statement.setString(7, user.getDob());
        statement.setString(8, user.getAddress());
        statement.setString(9, user.getGender());
        statement.setInt(10, user.getUserType());
        statement.setInt(11, user.getId());

        

        PreparedStatement stmt3 = con.prepareStatement("SELECT user_id from `user` WHERE username = ?");
        stmt3.setString(1, user.getUname());

        boolean rowUpdated = statement.executeUpdate() > 0;

        if (rowUpdated) {
            ResultSet rs3 = stmt3.executeQuery();
            if (rs3.next()) {
                int id = rs3.getInt(1);
                System.out.println(id);
                PreparedStatement stmt2 = con.prepareStatement("INSERT INTO `history` (`user_id`, `username`, `activity`) VALUES (?,?,?)");
                stmt2.setInt(1, id);
                stmt2.setString(2, user.getUname());
                stmt2.setString(3, "User Updated");
                int rs2 = stmt2.executeUpdate();

            }
        }
        statement.close();
        disconnect();
        return rowUpdated;
    }

    public User getUser(int id) throws SQLException {
        User user = null;
        String sql = "SELECT * FROM user WHERE user_id= ?";
        connect();

        PreparedStatement statement = con.prepareStatement(sql);
        statement.setInt(1, id);

        ResultSet resultSet = statement.executeQuery();

        if (resultSet.next()) {
            String fname = resultSet.getString("fname");
            String lname = resultSet.getString("lname");
            String uname = resultSet.getString("username");
            String pass = resultSet.getString("password");
            String email = resultSet.getString("email");
            long contact = Long.parseLong(resultSet.getString("contact"));
            String dob = resultSet.getString("dob");
            String address = resultSet.getString("address");
            String gender = resultSet.getString("gender");

            user = new User(id, fname, lname, uname, pass, email, contact, dob, address, gender);
        }
        resultSet.close();
        statement.close();
        return user;

    }

    public boolean blockUser(User user, String uname) throws SQLException {
        String sql = "UPDATE user SET is_blocked = 1 where user_id=?";
        connect();
        PreparedStatement statement = con.prepareStatement(sql);

        statement.setInt(1, user.getId());

        PreparedStatement stmt3 = con.prepareStatement("SELECT user_id from `user` WHERE username = ?");
        stmt3.setString(1, uname);

        boolean rowblocked = statement.executeUpdate() > 0;

        if (rowblocked) {
            ResultSet rs3 = stmt3.executeQuery();
            if (rs3.next()) {
                int id = rs3.getInt(1);
                System.out.println(id);
                PreparedStatement stmt2 = con.prepareStatement("INSERT INTO `history` (`user_id`, `username`, `activity`) VALUES (?,?,?)");
                stmt2.setInt(1, id);
                stmt2.setString(2, uname);
                stmt2.setString(3, "Blocked a User");
                int rs2 = stmt2.executeUpdate();

            }
        }
        disconnect();
        statement.close();
        return rowblocked;
    }

    public int checkid(String email) throws SQLException {
        int id = 0;
        String sql = "SELECT id FROM user where email = ?";
        PreparedStatement statement = con.prepareStatement(sql);
        statement.setString(1, email);

        ResultSet resultSet = statement.executeQuery();
        if (resultSet.next()) {
            id = resultSet.getInt("id");
        }
        resultSet.close();
        statement.close();
        return id;
    }

    public List<User> listBlockUser() throws SQLException {
        List<User> list_block_user = new ArrayList<>();
        String sql = "SELECT * from user where is_blocked = 1";
        connect();
        Statement statement = con.createStatement();
        ResultSet result = statement.executeQuery(sql);

        while (result.next()) {
            String username = result.getString("username");
            String fname = result.getString("fname");
            User block = new User(username, fname);
            list_block_user.add(block);
        }
        return list_block_user;
    }

    public void unblock(User user, String uname) throws SQLException {
        String sql = "UPDATE user SET is_blocked = 0 where user_id=?";
        connect();
        PreparedStatement statement = con.prepareStatement(sql);
        statement.setInt(1, user.getId());
        
        PreparedStatement stmt3 = con.prepareStatement("SELECT user_id from `user` WHERE username = ?");
        stmt3.setString(1, uname);
        boolean rowunblocked = statement.executeUpdate() > 0;

        if (rowunblocked) {
            ResultSet rs3 = stmt3.executeQuery();
            if (rs3.next()) {
                int id = rs3.getInt(1);
                System.out.println(id);
                PreparedStatement stmt2 = con.prepareStatement("INSERT INTO `history` (`user_id`, `username`, `activity`) VALUES (?,?,?)");
                stmt2.setInt(1, id);
                stmt2.setString(2, uname);
                stmt2.setString(3, "Unblocked a User");
                int rs2 = stmt2.executeUpdate();

            }
        }
        
        statement.close();
        disconnect();
    }
}
