<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Any Quotas of Great</title>
</head>
<body>
<div class="container">
    <a href="AllQuotes/quotes/">Back to main</a>
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
                    <td><a href="quotedata/${quote.id}">${quote.textOfQuote}</a></td>
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

    <c:url var="addAction" value="/quotes/add"/>

    <form:form action="${addAction}" commandName="quote" class="form-vertical">

        <c:if test="${!empty quote.textOfQuote}">
            <div class="form-group">
                <form:label path="id" class="control-label">
                    <spring:message text="ID:"/>
                </form:label>
                <form:input class="form-control" path="id" readonly="true" disabled="true"/>
                <form:hidden path="id"/>
            </div>
        </c:if>
        <div class="form-group">
            <form:label path="textOfQuote" class="control-label">
                <spring:message text="Text of Quote:"/>
            </form:label>
            <form:input class="form-control" path="textOfQuote"/>
        </div>
        <div class="form-group">
            <form:label path="author" class="control-label">
                <spring:message text="Author:"/>
            </form:label>
            <form:input class="form-control" path="author"/>
        </div>
        <div class="form-group">
            <form:label path="category" class="control-label">
                <spring:message text="Category:"/>
            </form:label>
            <form:input class="form-control" path="category"/>
        </div>
        <div class="form-group">
            <c:if test="${!empty quote.textOfQuote}">
                <input type="submit" value="<spring:message text="Edit Quote"/>" class="btn btn-primary">
            </c:if>
            <c:if test="${empty quote.textOfQuote}">
                <input type="submit" value="<spring:message text="Add Quote"/>" class="btn btn-primary">
            </c:if>
        </div>

    </form:form>

</div>

</body>
</html>
