<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>

<!DOCTYPE html>
<html lang="da">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><jsp:invoke fragment="header"/></title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<header>
    <img src="${pageContext.request.contextPath}/images/olskercupcakes.png" width="auto;" class="img-fluid"/>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                    aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav justify-content-start">
                    <a class="nav-item nav-link" href="${pageContext.request.contextPath}/welcome.jsp">Home</a>
                    <a class="nav-item nav-link" href="${pageContext.request.contextPath}/makecupcake.jsp">Make a cupcake</a>


                </div>
                <div class="navbar-nav justify-content-end">
                    <c:if test="${sessionScope.user != null }">
                        <p>${sessionScope.user.username}</p>
                        <a class="nav-item nav-link" href="${pageContext.request.contextPath}/logout">Log out</a>
                    </c:if>

                    <a class="nav-item nav-link" href="${pageContext.request.contextPath}/shoppingcart.jsp"><img src="images/shoppingcart.png" width="20px;" height="20px;"></a>
                </div>
            </div>
        </div>
    </nav>
</header>

<div id="body" class="container mt-4" style="min-height: 400px;">
    <h1><jsp:invoke fragment="header"/></h1>
    <jsp:doBody/>
</div>

<!-- Footer -->
<div class="container mt-3">
    <hr/>
    <div class="row mt-4">
        <div class="col">
        DAT 2.sem 2022 - CPH Business
        </div>
        <div class="col">
            <p>&copy; Olsker Cupcakes</p>
        </div>
        <div class="col">
            Isak, Jamie, Andreas, Felicia og Helena
        </div>
    </div>

</div>

</div>

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

</body>
</html>