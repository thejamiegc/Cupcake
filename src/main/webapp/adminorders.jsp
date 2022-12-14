<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:pagetemplate_admin>
        <jsp:attribute name="header">
            ORDERS
    </jsp:attribute>

    <jsp:body>
        <p>Choose the account in the menu:</p>
        <form action="adminorders" style="width:100px" method="post"><input type="submit" value="update"/></form>
        <div class="">
            <h3>Orderlist</h3>
            <table>
                <tr>
                    <th style="font-weight: bold">Order date</th>
                    <th style="font-weight: bold">CustomerID</th>
                    <th style="font-weight: bold">OrderID</th>
                    <th style="font-weight: bold">Cancel</th>
                </tr>
                <c:forEach var="orders" items="${sessionScope.orderList}">

                <tr>
                    <td>${orders.created}</td>
                    <td>${orders.customerID}</td>
                    <td>${orders.orderID}</td>
                    <td>
                        <form method="post">
                            <button formaction="deleteorder" name="orderID" value="${orders.orderID} ">
                                Cancel order
                            </button>
                        </form>
                    </td>

                    </c:forEach>
                </tr>


            </table>
        </div>

    </jsp:body>
</t:pagetemplate_admin>