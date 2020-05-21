<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="/style.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Review Confirmation Page</title>
</head>
<body>
<section>
<h1>Thanks for the review!</h1>
</section>

<section class="plain">
<p>
<b>Your Name: </b>
${name}
</p>
<p>
<b>Comment: </b>
<c:out value="${comment}"/>
</p>
<p>
<b>Rating: </b>
${rating}
</p>
</section>

<section class="plain">
<a href="/">Back to Homepage</a>
</section>

</body>
</html>