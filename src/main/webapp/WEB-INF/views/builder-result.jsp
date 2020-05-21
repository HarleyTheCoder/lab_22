<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link href="/style.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Pizza Builder Result Page</title>
</head>
<body>

<h1>Your Pizza</h1>

<section class="plain">

<p>
<b>Size: </b>${size}
</p>

<p>
<b>Toppings: </b>${toppings}
</p>

<p>
<b>Gluten-Free Crust: </b>${glutenfree}
</p>

<p>
<b>Specialty Instructions: </b>
<c:out value="${instructions}"/>
</p>

<p>

<b>Price: </b><fmt:formatNumber value="${price}" type="currency" /> 
</p>

<p id="delivery">
<c:set var="freedelivery" value="${freedelivery}"/>
<c:if test='${freedelivery=="true"}'>
<b><c:out value="FREE DELIVERY"></c:out></b>
</c:if>
</p>


</section>

<section class="plain">

<a href="/pizza-builder">Build Another Pizza </a>
|
<a href="/"> Back to Homepage</a>

</section>

</body>
</html>