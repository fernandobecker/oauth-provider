<%@ taglib tagdir="/WEB-INF/tags/layout" prefix="layout" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<layout:page title="Portal - Usuários">

    <jsp:body>

        <h2>Usuários</h2>

        <a href="<c:url value="/user/add"/>" class="button blue">Adicionar</a>

        <table class="grid">
            <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Usuário</th>
                    <th scope="col">Ação</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${model.users}" var="user">
                    <tr>
                        <td><c:out value="${user.id}" /></td>
                        <td><c:out value="${user.realname}" /></td>
                        <td><c:out value="${user.username}" /></td>
                        <td>
                            <a href="<c:url value="/user/edit/${user.id}"/>">Editar</a>
                            &nbsp;
                            <a href="<c:url value="/user/delete/${user.id}"/>" onclick="if (!window.confirm('Você realmente quer apagar este usuário?')) return false;">Apagar</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </jsp:body>
        
</layout:page>