package br.com.portalunimed.oauth.tests;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.portalunimed.oauth.domain.service.TokenService;

public class TokenServiceTest extends AbstractTest {

    @Autowired
    private TokenService service;

    @Test
    public void testInsertToken() throws Exception {
        this.service.createUnauthorizedRequestToken("migracao1-client-key", "http://teste.migracaoagi.portalunimed.com.br");
    }
    
}