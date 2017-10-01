<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>Title</title>
</head>
<body>
<div class="container">

    <a href="/">Вернуться назад</a>

<h1>Quote detail</h1>

<table class="table">
    <tr>
        <td>ID</td>
        <td>TEXT</td>
        <td>Date</td>
        <td>Author</td>
        <td>Category</td>
    </tr>
    <tr>
        <td>${quote.id}</td>
        <td>${quote.textOfQuote}</td>
        <td>${quote.addedDate}</td>
        <td>${quote.author}</td>
        <td>${quote.category}</td>
    </tr>
</table>
</div>
</body>
</html>
