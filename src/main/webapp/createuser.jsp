<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:pagetemplate>
        <jsp:attribute name="header">
            CREATE USER
    </jsp:attribute>

    <jsp:body>

        <p>Don't have a profile? Create a new user here.</p>

        <div class="form-outline mb-4">
            <form style="width:100px" action="createuser" method="post">
                <input type="text" id="username" placeholder="name@mail.com" name="username"/>
                <br>
                <br>
                <input type="password" id="password" placeholder="password" name="password"/>
                <br>
                <br>
           <%--     <input type="password" id="passwordR" placeholder="reenter password" name="passwordR"/>
                <br>
                <br>--%>
                <input type="submit" value="Log in"/>
            </form>
        </div>

        <p>Forgot password? Click <a href="">here</a> for a new one</p>

    </jsp:body>

</t:pagetemplate>