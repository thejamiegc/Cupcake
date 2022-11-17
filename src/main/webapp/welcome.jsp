<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:pagetemplate_user>

    <jsp:attribute name="header">
             WELCOME TO OLSKER CUPCAKES
    </jsp:attribute>

    <jsp:body>
        <div>
            <img src="images/image1.png" alt="image1" width="400px">
        </div>
        <div>
            <p>We love cupcakes here at Olsker Cupcakes!</p>
            <p>Want to order some? Click "make a cupcake" at the top of the page.</p>
            <p>Have fun!</p>
        </div>
    </jsp:body>
</t:pagetemplate_user>