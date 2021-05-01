package br.com.portalunimed.oauth.domain.service;

import br.com.portalunimed.oauth.domain.entity.applications.ApplicationAuthorized;
import java.util.List;

public class ApplicationServiceImpl implements ApplicationService{

    @Override
    public void remove(Long id) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    @Override
    public ApplicationAuthorized findById(Long id) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public List<ApplicationAuthorized> findAll() {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
}