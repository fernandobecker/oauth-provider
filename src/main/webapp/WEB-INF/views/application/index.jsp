<%@ taglib tagdir="/WEB-INF/tags/layout" prefix="layout" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<layout:page title="Portal - Aplicações">

    <jsp:body>

        <h2>Aplicações</h2>

        <table class="grid">
            <thead>
                <tr>
                    <th scope="col">Aplicação</th>
                    <th scope="col">URL</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><c:out value="Beneficiário" /></td>
                    <td><c:out value="http://beneficiario.portalunimed.com.br"/></td>
                </tr>
                <tr>
                    <td><c:out value="Central da marca" /></td>
                    <td><c:out value="http://centraldamarca.portalunimed.com.br"/></td>
                </tr>
                <tr>
                    <td><c:out value="Extrato de Contas" /></td>
                    <td><c:out value="http://extrato.portalunimed.com.br"/></td>
                </tr>
            </tbody>
        </table>

    </jsp:body>

</layout:page>