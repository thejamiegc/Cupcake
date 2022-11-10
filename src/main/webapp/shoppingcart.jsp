<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<t:pagetemplate_user>

    <jsp:body>

        <h1>Shopping cart</h1>

        <c:forEach var="item" items="${sessionScope.cart.cupcakeList}">
            Topping: ${item.toppingID} Bottom: ${item.bottomID} Amount: ${item.amount}
        </c:forEach>
<%--        <div class="">--%>
<%--            <table>--%>
<%--                <tr>--%>
<%--                    <th style="font-weight: bold">Cupcakes</th>--%>
<%--                    <th style="font-weight: bold">Price</th>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <td>cupcake 1</td>--%>
<%--                    <td>price</td>--%>
<%--                    <td><input type="submit" value="Delete"></td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <td>cupcake 2</td>--%>
<%--                    <td>price</td>--%>
<%--                    <td><input type="submit" value="Delete"></td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <td>cupcake 3</td>--%>
<%--                    <td>price</td>--%>
<%--                    <td><input type="submit" value="Delete"></td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <td style="font-weight: bold">Total price</td>--%>
<%--                    <td>Total price</td>--%>
<%--                </tr>--%>
<%--            </table>--%>
<%--        </div>--%>

<%--        <div class="">--%>
<%--            <input type="submit" value="Checkout">--%>
<%--        </div>--%>


    </jsp:body>

</t:pagetemplate_user>