<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:pagetemplate>
    <jsp:attribute name="header">
             Login
    </jsp:attribute>

    <jsp:attribute name="footer">
            Login
    </jsp:attribute>

    <jsp:body>

        <h3>You can log in here</h3>
        <div class="form-outline mb-4">
        <form action="login" style="width:100px" method="post">
            <input type="text" id="username" placeholder="name@mail.com" name="username"/>
            <br>
            <input type="password" id="password" placeholder="password" name="password"/>
            <br>
            <input type="submit"  value="Log in"/>
        </form>
        </div>

    </jsp:body>
</t:pagetemplate>