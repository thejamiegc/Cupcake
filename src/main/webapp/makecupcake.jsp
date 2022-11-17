<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pagetemplate_user>
        <jsp:attribute name="header">
             MAKE A CUPCAKE
    </jsp:attribute>

    <jsp:body>

        <form action="addtocart" method="post">
            <label for="toppings">The Toppings:</label>
            <select name="toppings" id="toppings">
                <c:forEach var="item" items="${sessionScope.toppingList}">
                    <option value="${item.toppingID}">${item.toppingName}</option>
                </c:forEach>
            </select>

            <label for="bottoms">The Bottoms:</label>
            <select name="bottoms" id="bottoms">
                <c:forEach var="item" items="${sessionScope.bottomList}">
                    <option value="${item.bottomID}">${item.bottomName}</option>
                </c:forEach>
            </select>

            <label for="quantity">Number of cupcakes:</label>
            <input type="number" id="quantity" name="quantity" min="1" max="50"/>
            <button name="AddToCart">Add to cart</button>
        </form>

    </jsp:body>
</t:pagetemplate_user>