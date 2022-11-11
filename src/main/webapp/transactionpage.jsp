<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:pagetemplate_user>
        <jsp:attribute name="header">
             TRANSACTION
    </jsp:attribute>

    <jsp:body>

        <h3>Your order:</h3>

        <div class="">
            <table>
                <tr>
                    <th style="font-weight: bold">Cupcakes</th>
                    <th style="font-weight: bold">Price</th>
                    <th style="font-weight: bold"></th>
                </tr>
                <tr>
                    <td>cupcake 1</td>
                    <td>price</td>
                    <td><input type="submit" value="Delete"></td>
                </tr>
                <tr>
                    <td>cupcake 2</td>
                    <td>price</td>
                    <td><input type="submit" value="Delete"></td>
                </tr>
                <tr>
                    <td>cupcake 3</td>
                    <td>price</td>
                    <td><input type="submit" value="Delete"></td>
                </tr>
                <tr>
                    <td style="font-weight: bold">Total price</td>
                    <td>Total price</td>
                </tr>
            </table>
        </div>

        <div class="">
            <table>
                <tr>
                    <th style="font-weight: bold">Account</th>
                </tr>
                <tr>
                    <td>Balance:</td>
                    <td>user balance</td>
                </tr>
                <tr>
                    <td>Amount in cart:</td>
                    <td>total cart price</td>
                </tr>
                <tr>
                    <td>New balance:</td>
                    <td>user new balance</td>
                </tr>

            </table>
        </div>

        <div class="">
            <input type="submit" value="Cancel">
        </div>

        <div class="">
            <input type="submit" value="Pay now">
        </div>

    </jsp:body>

</t:pagetemplate_user>