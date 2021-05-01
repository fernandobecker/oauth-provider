package br.com.portalunimed.oauth.domain.service;

import br.com.portalunimed.oauth.domain.entity.applications.ApplicationAuthorized;
import java.util.List;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation = Propagation.REQUIRED)
public interface ApplicationService {

    public void remove(Long id);
    
    @Transactional(readOnly = true)
    public ApplicationAuthorized findById(Long id);

    @Transactional(readOnly = true)
    public List<ApplicationAuthorized> findAll();

}
