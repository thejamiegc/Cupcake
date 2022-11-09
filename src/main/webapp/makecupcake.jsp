<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:pagetemplate_user>

    <jsp:body>

        <h1>Design your cupcake</h1>

        <form action="">
            <label for="toppings">The Toppings:</label>
            <select name="toppings" id="toppings">
                <option value="Chocolate">Chocolate</option>
                <option value="Blueberry">Blueberry</option>
                <option value="Raspberry">Raspberry</option>
                <option value="Crispy">Crispy</option>
                <option value="Strawberry">Strawberry</option>
                <option value="Rum/Raisin">Rum/Raisin</option>
                <option value="Orange">Orange</option>
                <option value="Lemon">Lemon</option>
                <option value="Blue cheese">Blue cheese</option>
            </select>
            <br><br>
            <label for="bottoms">The Bottoms:</label>
            <select name="bottoms" id="bottoms">
                <option value="Chocolate">Chocolate</option>
                <option value="Vanilla">Vanilla</option>
                <option value="Nutmeg">Nutmeg</option>
                <option value="Pistacio">Pistacio</option>
                <option value="Almond">Almond</option>
            </select>
            <label for="amount">Number of cupcakes:</label>
            <input type="number"  id="amount" name="amount" min="1"/>
            <br><br>
            <input type="submit" value="Add cupcake">
        </form>

    </jsp:body>

</t:pagetemplate_user>