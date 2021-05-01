package br.com.portalunimed.oauth.tests;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import junit.framework.Assert;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;

import br.com.portalunimed.oauth.domain.entity.credentials.Role;
import br.com.portalunimed.oauth.domain.entity.credentials.User;
import br.com.portalunimed.oauth.domain.service.UserService;

public class UserServiceTest extends AbstractTest {

    @Autowired
    private UserService service;

    @Test
    public void testInsertUser() throws ParseException {
        User user = new User();
        user.setRealname("Administrator");
        user.setUsername("admin");
        user.setPassword("admin");
        user.setEnabled(true);
        user.setRole(Role.ROLE_ADMIN);
        user.setBirthDate(new SimpleDateFormat("dd/MM/yyyy").parse("22/10/1988"));

        User userInserted = this.service.insert(user);
        Assert.assertNotNull(userInserted.getId());
    }

    @Test
    public void testShouldFindAnUserByUsername() {
        String username = "admin";
        try {
            UserDetails u = this.service.loadUserByUsername(username);
            Assert.assertNotNull(u);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}