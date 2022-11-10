<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:pagetemplate>

    <jsp:body>

        <h1>Create user</h1>

        <div class="form-outline mb-4">
            <form style="width:100px" action="createUser" method="post">
                <input type="text" id="username" placeholder="name@mail.com" name="username"/>
                <br>
                <input type="password" id="password" placeholder="password" name="password"/>
                <br>
                <input type="password" id="passwordR" placeholder="reenter password" name="passwordR"/>
                <br>
                <input type="submit"  value="Log in"/>
            </form>
        </div>

    </jsp:body>

</t:pagetemplate>