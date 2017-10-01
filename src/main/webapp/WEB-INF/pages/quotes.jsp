<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Title</title>
</head>
<body>
<div class="container">
<a href="quotes.jsp">Back to main</a>
<br>
<br>


<h1>Quotes List</h1>

<c:if test="${!empty listQuotes}">
    <table class="table">
        <tr>
            <td>ID</td>
            <td>TEXT</td>
            <td>Date</td>
            <td>Author</td>
            <td>Category</td>
            <td>Edit</td>
            <td>Delete</td>
        </tr>
        <c:forEach items="${listQuotes}" var="quote">
            <tr>
                <td>${quote.id}</td>
                <td>${quote.textOfQuote}</td>
                <td>${quote.addedDate}</td>
                <td>${quote.author}</td>
                <td>${quote.category}</td>
                <td><a href="<c:url value='/edit/${quote.id}'/>">Edit</a></td>
                <td><a href="<c:url value='/remove/${quote.id}'/>">Delete</a></td>
                <td></td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<h2>Add New Quote</h2>

<c:url var="addAction" value="/quotes/add">
    <%--TODO add from AddQuote later --%>
</c:url>

</div>

</body>
</html>
