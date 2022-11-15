<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:pagetemplate_admin>
        <jsp:attribute name="header">
            ORDERS
    </jsp:attribute>

    <jsp:body>
        <p>Choose the account in the menu:</p> <form action="adminorders" style="width:100px" method="post"> <input type="submit" value="update"/></form>
        <div class="">
            <form action="">
                <label for="users">Users:</label>
                <select name="users" id="users">
                    <c:forEach var="item" items="${sessionScope.orderList}">
                    <option value="id1">${item.customerID}</option>
                    </c:forEach>
                </select>
            </form>
            <h3>Orderlist</h3>
            <table>
                <tr>
                    <th style="font-weight: bold">Order date</th>
                    <th style="font-weight: bold">Price total</th>
                    <th style="font-weight: bold">Picked up?</th>
                    <th style="font-weight: bold"></th>
                </tr>
                <tr>
                    <td>Date</td>
                    <td>price</td>
                    <td>Yes/no</td>
                    <td><button name="DeleteOrder">Delete</button></td>
                </tr>
                <tr>
                    <td>Date</td>
                    <td>price</td>
                    <td>Yes/no</td>
                    <td><button name="DeleteOrder">Delete</button></td>
                </tr>
                <tr>
                    <td>Date</td>
                    <td>price</td>
                    <td>Yes/no</td>
                    <td><button name="DeletOrder">Delete</button></td>
                </tr>
            </table>
        </div>

    </jsp:body>

</t:pagetemplate_admin>