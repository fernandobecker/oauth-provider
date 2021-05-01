<%@ taglib tagdir="/WEB-INF/tags/layout" prefix="layout" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<layout:page title="Portal - Authorize Application">

    <jsp:body>
        <h2>Confirmação de Acesso</h2>
        <p>
            Você autoriza a aplicação &quot;<c:out value="${consumer.consumerName}" />&quot; para acessar os seguintes recursos:
        </p>

        <ul>
            <li><c:out value="${consumer.resourceName}" /> &mdash; <c:out value="${consumer.resourceDescription}" /></li>
        </ul>

        <form action="<c:url value="/oauth/authorize"/>" method="post">
            <input name="requestToken" value="<c:out value="${oauth_token}"/>" type="hidden" />
            <c:if test="${!empty oauth_callback}">
                <input name="callbackURL" value="<c:out value="${oauth_callback}"/>" type="hidden"/>
            </c:if>
            <p>
                <input class="button blue" name="authorize" value="Autorizar" type="submit" />
                &nbsp;
                <a href="<c:url value="/oauth/revoke/${oauth_token}"/>" class="button red">Não Autorizar</a>
            </p>
        </form>

    </jsp:body>

</layout:page>