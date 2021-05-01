<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Portal - Login</title>
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/styles.css"/>" />
    </head>
    <body>
        <div class="login-wrapper">
            <header>
                <h1><img src="<c:url value="/resources/imgs/unimed.png"/>" width="171" height="107" alt="unimed"/></h1>
                <c:if test="${not empty param.login_error}">
                    <div class="error">
                        Username ou Password inválido!
                    </div>
                </c:if>
            </header>
            <section id="content">
                <form method="post" action="<c:url value="/login.do"/>" class="form-login">
                    <p>
                        <label for="username">Username:</label>
                        <input type="text" id="username" name="j_username" required="required" />
                    </p>
                    <p>
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="j_password" required="required" />
                    </p>
                    <p>
                        <input class="button blue" type="submit" value="Entrar" />
                    </p>
                </form>
            </section>
        </div>
    </body>
</html>