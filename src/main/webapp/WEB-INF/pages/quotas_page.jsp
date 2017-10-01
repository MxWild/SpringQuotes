<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<jsp:include page ="inc/header.jsp" />--%>
<%--<hr>--%>
    <%--<h1>This is Quotas Page</h1>--%>
<%--<hr>--%>
<%--<jsp:include page="inc/footer.jsp"/>--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel='stylesheet' href='/webjars/bootstrap/css/bootstrap.min.css'>
    <script src="/webjars/jquery/1.11.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Quotes</title>
</head>
<body>
    <h1>Quotes List</h1>
    <hr>

    <a href="<c:url value="/quotes"/>">Quotes List</a>

    <hr>
</body>
</html>
