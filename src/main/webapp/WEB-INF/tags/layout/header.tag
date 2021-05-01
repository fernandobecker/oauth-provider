<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ tag body-content="empty" description="Header" %>

<header>
    
    <h1><img src="<c:url value="/resources/imgs/unimed.png"/>" width="171" height="107" alt="unimed"/></h1>
    
    <p class="loggedAs">
        Usuário: <b><sec:authentication property="principal.realname" /></b>.
        <a href="<c:url value="/user/profile"/>">Editar Perfil</a>
        &nbsp;
        <a href="<c:url value="/logout.do"/>">Sair</a>
    </p>
    
    <ul id="menu">
        
        <li><a href="<c:url value="/home"/>">Home</a></li>
        
        <sec:authorize access="hasRole('ROLE_ADMIN')" >
            <li><a href="<c:url value="/application"/>">Aplicações</a></li>
            <li><a href="<c:url value="/user"/>">Usuários</a></li>
        </sec:authorize>
    
        <li><a href="<c:url value="/about"/>">Sobre</a></li>
    
    </ul>
    
</header>