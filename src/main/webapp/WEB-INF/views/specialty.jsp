<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link href="/style.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Specialty Pizza Page</title>
</head>
<body>

<section>
<h1>Specialty Pizza: ${name}</h1>
</section>

<p>
<b>Name: </b>${name}
</p>

<p>
<b>Price: </b><fmt:formatNumber value="${price}" type="currency" />
</p>

<p>
<a href="/">Return to Homepage</a>
</p>

</body>
</html>