<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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

</body>
</html>
