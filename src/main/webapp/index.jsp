<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:pagetemplate>
        <jsp:attribute name="header">
            WELCOME TO OLSKER CUPCAKES
    </jsp:attribute>

    <jsp:body>
        <div>
            <img src="images/image1.png" alt="image1" width="400px">
        </div>
        <div>
            <p>At Olsker cupcakes we make cupcakes for every desire!</p>
            <p>To order your cupcakes you will need to login first.</p>
            <p>When you are logged in click on "make a cupcake" in the top menu.</p>
            <p>Here you can create your own cupcakes - choose a bottom and topping and the amount.</p>
            <br>
            <p><b>We look forward to making fresh cupcakes to you!</b></p>
        </div>

    </jsp:body>

</t:pagetemplate>