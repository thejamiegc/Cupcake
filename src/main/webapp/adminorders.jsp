<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:pagetemplate_admin>

    <jsp:body>

        <h1>Orders</h1>
        <p>Choose the account in the menu:</p>

        <div class="">
        <form action="">
        <label for="users">Users:</label>
        <select name="users" id="users">
            <option value="id1">email1</option>
            <option value="id2">email2</option>
            <option value="id3">email3</option>
            <option value="id4">email4</option>
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
                    <td><input type="submit" value="Delete"></td>
                </tr>
                <tr>
                    <td>Date</td>
                    <td>price</td>
                    <td>Yes/no</td>
                    <td><input type="submit" value="Delete"></td>
                </tr>
                <tr>
                    <td>Date</td>
                    <td>price</td>
                    <td>Yes/no</td>
                    <td><input type="submit" value="Delete"></td>
                </tr>
            </table>
        </div>

    </jsp:body>

</t:pagetemplate_admin>