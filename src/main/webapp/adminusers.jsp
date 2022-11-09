<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:pagetemplate_admin>

    <jsp:body>

        <h1>Users</h1>

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
                <tr>
                    <td>ID</td>
                    <td>email</td>
                    <td>password</td>
                    <td>Balance</td>
                    <td><input type="submit" value="Update balance"></td>
                </tr>
                <tr>
                    <td>ID</td>
                    <td>email</td>
                    <td>password</td>
                    <td>Balance</td>
                    <td><input type="submit" value="Update balance"></td>
                </tr>
                <tr>
                    <td>ID</td>
                    <td>email</td>
                    <td>password</td>
                    <td>Balance</td>
                    <td><input type="submit" value="Update balance"></td>
                </tr>
            </table>
        </div>

    </jsp:body>

</t:pagetemplate_admin>