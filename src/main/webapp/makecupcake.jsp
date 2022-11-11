<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
                <option value="1">Chocolate</option>
                <option value="2">Blueberry</option>
                <option value="3">Raspberry</option>
                <option value="4">Crispy</option>
                <option value="5">Strawberry</option>
                <option value="6">Rum/Raisin</option>
                <option value="7">Orange</option>
                <option value="8">Lemon</option>
                <option value="9">Blue cheese</option>
            </select>
            <label for="bottoms">The Bottoms:</label>
            <select name="bottoms" id="bottoms">
                <option value="1">Chocolate</option>
                <option value="2">Vanilla</option>
                <option value="3">Nutmeg</option>
                <option value="4">Pistacio</option>
                <option value="5">Almond</option>
            </select>
            <label for="quantity">Number of cupcakes:</label>
            <input type="number" id="quantity" name="quantity" min="1" max="50"/>
            <button name="AddToCart">Add to cart</button>
        </form>

    </jsp:body>

</t:pagetemplate_user>