<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!-- Core -->
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="/style.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>MVC's Pizza Homepage</title>
</head>
<body>
<section>
<img src="/pizza-clip.png" width="400"/>
<h1>Welcome to MVC's Pizza</h1>

</section>

<section>
<h2>Specialty Pizza</h2>

<ul>

<c:forEach var="pizza" items="${specPizzas}">
<c:url var="myurl" value="/specialty?pizza=${pizza}"/>
<c:url value="/specialty" var="link">
<c:param name="name" value="${pizza.name}"/>
<c:param name="price" value="${pizza.price}"/>
</c:url>
<li><a href="${link}">${pizza.name}</a></li>
</c:forEach>
</ul>
</section>

<Section>
<h2>Custom Pizza</h2>
<a href="/pizza-builder" class="plain">Build your own!</a>
</Section>

<section>
<h2>Leave a Review</h2>
<a href="/review-form" class="plain">Click here to leave a review.</a>
</section>

</body>
</html>