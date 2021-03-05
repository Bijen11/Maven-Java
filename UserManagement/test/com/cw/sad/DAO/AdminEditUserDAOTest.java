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
public class AdminEditUserDAOTest {

    Connection con;

    public AdminEditUserDAOTest() {
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
     * Test of editUserInfo method, of class AdminEditUserDAO.
     */
    @Test
    public void testEditUserInfo1() {

        AdminEditUserDAO add = new AdminEditUserDAO(con);
        User user = new User();
        user.setName("Ajaya");
        user.setEmail("ajay@hotmail.com");
        user.setPassword("kkk");
        user.setDob("06-05-2005");
        user.setContact("9862192257");
        user.setAddress("bhojpur");
        user.setRole("client");

        boolean expResult = false;
        boolean result = add.editUserInfo(user);
        assertEquals(expResult, result);

    }

    @Test
    public void testEditUserInfo2() {

        AdminEditUserDAO add = new AdminEditUserDAO(con);
        User user = new User();
        user.setName("");
        user.setEmail("");
        user.setPassword("");
        user.setDob("");
        user.setContact("");
        user.setAddress("");
        user.setRole("");

        boolean expResult = false;
        boolean result = add.editUserInfo(user);
        assertEquals(expResult, result);

    }

    @Test
    public void testEditUserInfo3() {

        AdminEditUserDAO add = new AdminEditUserDAO(con);
        User user = new User();
        user.setName("admin");
        user.setEmail("admin@gmail.com");
        user.setPassword("kkk");
        user.setDob("06-12-1998");
        user.setContact("9862195587");
        user.setAddress("Kathmandu");
        user.setRole("admin");

        boolean expResult = false;
        boolean result = add.editUserInfo(user);
        assertEquals(expResult, result);

    }

    @Test
    public void testEditUserInfo4() {

        AdminEditUserDAO add = new AdminEditUserDAO(con);
        User user = new User();
        user.setName("admin");
        user.setEmail("admin@gmail.com");
        user.setPassword("kkk");
        user.setDob("06-12-1998");
        user.setContact("9862195587");
        user.setAddress("Kathmandu");
        user.setRole("admin");

        boolean expResult = true;
        boolean result = add.editUserInfo(user);
        assertNotEquals(expResult, result);

    }

    @Test
    public void testEditUserInfo5() {

        AdminEditUserDAO add = new AdminEditUserDAO(con);
        User user = new User();
        user.setName("admin");
        user.setEmail("admin@gmail.com");
        user.setPassword("kkk");
        user.setDob("");
        user.setContact("");
        user.setAddress("");
        user.setRole("");

        boolean expResult = true;
        boolean result = add.editUserInfo(user);
        assertNotEquals(expResult, result);

    }

}
