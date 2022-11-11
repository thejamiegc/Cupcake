<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<t:pagetemplate_user>
        <jsp:attribute name="header">
             SHOPPING CART
    </jsp:attribute>

    <jsp:body>
        <p>Number of lines in cart: ${requestScope.cartsize}</p>
        <h3>Items in cart</h3>

        <div class="">
            <table>
                <tr>
                    <th style="font-weight: bold">Cupcakes</th>
                    <th style="font-weight: bold">Price</th>
                    <th style="font-weight: bold">Delete item</th>
                    <th style="font-weight: bold">Edit item</th>
                </tr>
                <c:forEach var="item" items="${sessionScope.cart.cupcakeList}">
                    <tr>
                        <td><p>(${item.quantity}) cupcake: ${item.topping.toppingName} + ${item.bottom.bottomName}</p></td>
                        <td><p>${item.cupcakePrice}</p></td>
                        <td><button name="DeleteFromCart">Delete</button></td>
                        <td><button name="EditCupcake">Edit</button></td>
                    </tr>
                </c:forEach>
                <td style="font-weight: bold">Total price</td>
                <td>${sessionScope.cart.cartTotal()}</td>
                <td></td>
                <td></td>
            </table>
        </div>
        <br>
        <div class="">
            <button name="OrderConfirmation">Checkout</button>
        </div>
    </jsp:body>
</t:pagetemplate_user>