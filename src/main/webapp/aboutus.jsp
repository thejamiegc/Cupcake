<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:pagetemplate>
        <jsp:attribute name="header">
             ABOUT US
    </jsp:attribute>

    <jsp:body>

        <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
            dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
            ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat
            nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit
            anim id est laborum."
        </p>

        <h2>CONTACT US</h2>

        <h3>Address:</h3>
        <p>Some adress 1<br>
            3700 Rønne</p>

        <h3>Telephone:</h3>
        <p>+45 00 00 00 00</p>

        <h3>Find us here:</h3>
        <div class="mapouter">
            <div class="gmap_canvas">
                <iframe width="600" height="500" id="gmap_canvas"
                        src="https://maps.google.com/maps?q=3700%20r%C3%B8nne&t=&z=13&ie=UTF8&iwloc=&output=embed"
                        frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                <style>.mapouter {
                    position: relative;
                    text-align: right;
                    height: 500px;
                    width: 600px;
                }</style>
                <a href="https://www.embedgooglemap.net">google iframe</a>
                <style>.gmap_canvas {
                    overflow: hidden;
                    background: none !important;
                    height: 500px;
                    width: 600px;
                }</style>
            </div>
        </div>


    </jsp:body>

</t:pagetemplate>