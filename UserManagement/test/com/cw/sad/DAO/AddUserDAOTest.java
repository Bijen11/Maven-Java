/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cw.sad.DAO;

import com.cw.sad.model.User;
import java.sql.Connection;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Rai jee
 */
public class AddUserDAOTest {

    Connection con;

    public AddUserDAOTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    /**
     * Test of saveUser method, of class AddUserDAO.
     */
    @Test
    public void testSaveUser1() {
        AddUserDAO add = new AddUserDAO(con);
        User user = new User();
        user.setName("Ajaya");
        user.setEmail("ajay@hotmail.com");
        user.setPassword("kkk");
        user.setDob("06-05-2005");
        user.setContact("9862192257");
        user.setAddress("bhojpur");
        user.setRole("client");

        boolean expResult = false;
        boolean result = add.saveUser(user);
        assertEquals(expResult, result);
    }

    @Test
    public void testSaveUser2() {
        AddUserDAO add = new AddUserDAO(con);
        User user = new User();
        user.setName("admin");
        user.setEmail("admin@gmail.com");
        user.setPassword("kkk");
        user.setDob("06-09-1998");
        user.setContact("986543210");
        user.setAddress("Kathmandu");
        user.setRole("admin");

        boolean expResult = true;
        boolean result = add.saveUser(user);
        assertNotEquals(expResult, result);
    }

    @Test
    public void testSaveUser3() {
        AddUserDAO add = new AddUserDAO(con);
        User user = new User();
        user.setName("Bran");
        user.setEmail("bran@gmail.com");
        user.setPassword("kkk");
        user.setDob("04-09-2000");
        user.setContact("9862192243");
        user.setAddress("Winterfell");
        user.setRole("client");

        boolean expResult = false;
        boolean result = add.saveUser(user);
        assertEquals(expResult, result);
    }

    @Test
    public void testSaveUser4() {
        AddUserDAO add = new AddUserDAO(con);
        User user = new User();
        user.setName("jonsnow");
        user.setEmail("jon@gmail.com");
        user.setPassword("");
        user.setDob("");
        user.setContact("");
        user.setAddress("");
        user.setRole("");

        boolean expResult = true;
        boolean result = add.saveUser(user);
        assertNotEquals(expResult, result);
    }

    @Test
    public void testSaveUser5() {
        AddUserDAO add = new AddUserDAO(con);
        User user = new User();
        user.setName("Bran");
        user.setEmail("Bran@gmail.com");
        user.setPassword("kkk");
        user.setDob("2020-06-08");
        user.setContact("9862192243");
        user.setAddress("Winterfell");
        user.setRole("client");

        boolean expResult = false;
        boolean result = add.saveUser(user);
        assertEquals(expResult, result);
    }

}
