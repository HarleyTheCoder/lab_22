<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="/style.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Review Form</title>
</head>
<body>

<!-- **Add required to input fields** -->

<h1>Leave a Review</h1>


<form action="/confirm-review">
<p>
<label><b>Your Name</b></label>
<input type="text" name="name" required/>
</p>
<p>
<label><b>Comment</b></label>
<br>
<textarea id="text" name="comment" minlength=5 
style="height: 100px; width: 400px;" required>
</textarea>
</p>
<p>
<label>Rating</label>
<br>
<input type="radio" required name="rating" id="val5" value="5"/>
<label for="val5"><b>5 (best) -</b></label>
<input type="radio" required name="rating" id="val4" value="4"/>
<label for="val4"><b>4 -</b></label>
<input type="radio" required name="rating" id="val3" value="3"/>
<label for="val3"><b>3 -</b></label>
<input type="radio" required name="rating" id="val2" value="2"/>
<label for="val2"><b>2 -</b></label>
<input type="radio" required name="rating" id="val1" value="1"/>
<label for="val1"><b>1 (worst)</b></label>

</p>
<p>
<input type="submit"/>
<a href="/">Never Mind</a>
</p>
</form>

</body>
</html>