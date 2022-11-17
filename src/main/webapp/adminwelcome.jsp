<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:pagetemplate_admin>

    <jsp:attribute name="header">
        ADMIN PAGE
    </jsp:attribute>

    <jsp:body>
        <img src="images/image1.png" alt="Image1">
        <p>You have more editing privileges. You can see users or orders at the top of the page.</p>
    </jsp:body>
</t:pagetemplate_admin>