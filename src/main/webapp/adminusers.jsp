<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:pagetemplate_admin>

        <jsp:attribute name="header">
             All users
    </jsp:attribute>

    <jsp:body>

        <h1>Users</h1>
        <form action="adminusers" style="width:100px" method="post"> <input type="submit" value="update"/></form>
        <div class="">
            <h3>Orderlist</h3>
            <table>
                <tr>
                    <th style="font-weight: bold">ID</th>
                    <th style="font-weight: bold">Email</th>
                    <th style="font-weight: bold">Password</th>
                    <th style="font-weight: bold">Balance</th>
                    <th style="font-weight: bold"></th>
                </tr>
                <c:forEach var="item" items="${sessionScope.userList}">
                <tr>
                    <td>ID</td>
                    <td>${item.username}</td>
                    <td>${item.password}</td>
                    <td>${item.balance}</td>
                    <td><input type="submit" value="Update balance"></td>
                </tr>
                </c:forEach>
            </table>
        </div>

    </jsp:body>

</t:pagetemplate_admin>