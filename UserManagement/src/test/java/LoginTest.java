
import com.mycompany.usermanagement.dao.LoginDao;
import java.sql.SQLException;
import static junit.framework.Assert.assertFalse;
import static junit.framework.Assert.assertTrue;
import org.junit.Test;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author sonam
 */
public class LoginTest {
    @Test
    public void Login_FullData(){
        LoginDao a = new LoginDao();
        assertTrue(a.check("admin", "admin"));
    }
    
    @Test
    public void Login_EmptyData(){
        LoginDao a = new LoginDao();
        assertFalse(a.check("", ""));
    }
    
    @Test
    public void Login_WrongData(){
        LoginDao a = new LoginDao();
        assertFalse(a.check("adnnc", "scsve"));
    }
    
     public static void main(String[] args) throws ClassNotFoundException, SQLException {
        
         LoginTest obj = new LoginTest();
         obj.Login_FullData();
         obj.Login_EmptyData();
         obj.Login_WrongData();
         
    }
}
