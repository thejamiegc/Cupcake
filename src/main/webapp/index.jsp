<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:pagetemplate>

    <jsp:body>

        <h1>Welcome to Olsker Cupcakes</h1>
        <img src="" alt="Image1">
        <p>At Olsker cupcakes we make cupcakes for every desire!</p>
        <p>You can order your cupcakes by choosing "bake a cupcake" at the top of the page ( when you are logged in).</p>
        <br>
        <br>
        <p>Have fun!</p>

        <c:if test="${sessionScope.user == null}">
            <p>You are not logged in yet. You can do it here: <a
                    href="login.jsp">Login</a></p>
        </c:if>

    </jsp:body>

</t:pagetemplate>