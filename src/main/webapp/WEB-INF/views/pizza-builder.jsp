<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    <!-- 
    **Lab: Part 2 - The fact that I already turned the toppings into a checkbox 
	situation  means the topping number will automatically be in a certain range 
	and also a whole number.

	So there. I win. Validation is built in.
	(I have two more toppings than 10, should be cool?)
     -->
    
<!DOCTYPE html>
<html>
<head>
<link href="/style.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Pizza Builder Form</title>
</head>
<body>
<h1>Build Your Own Pizza</h1>

<section>

<form action="/builder-result">

<label><b>Size</b></label>
<select name="size" required>
  <option value='junior'>Junior(8")</option>
  <option value='small'>Small(10")</option>
  <option value='medium'>Medium(12")</option>
  <option value='large'>Large(14")</option>
  <option value='xlarge'>X-Large(16")</option>
</select>
<br>

<br>
<label><b>Toppings?</b></label>
<br>

<!-- Umm... for Part 3... Uh, I already used check boxes... -->
<!-- I'll add the required code below it but in a comment thingy -->
<input type='hidden' name="toppings[]" id="topping0" value="none"/>
<input type="checkbox" name="toppings[]" id="topping1" value="pepperoni"/>
<label for="topping1">pepperoni</label>
<input type="checkbox" name="toppings[]" id="topping2" value="ham"/>
<label for="topping2">ham</label>
<input type="checkbox" name="toppings[]" id="topping3" value="bacon"/>
<label for="topping3">bacon</label>
<input type="checkbox" name="toppings[]" id="topping4" value="sausage"/>
<label for="topping4">sausage</label>
<input type="checkbox" name="toppings[]" id="topping5" value="anchovies"/>
<label for="topping5">anchovies</label><br>
<input type="checkbox" name="toppings[]" id="topping6" value="mushrooms"/>
<label for="topping6">mushrooms</label>
<input type="checkbox" name="toppings[]" id="topping7" value="onions"/>
<label for="topping7">onions</label>
<input type="checkbox" name="toppings[]" id="topping8" value="green peppers"/>
<label for="topping8">green peppers</label>
<input type="checkbox" name="toppings[]" id="topping9" value="banana peppers"/>
<label for="topping9">banana peppers</label><br>
<input type="checkbox" name="toppings[]" id="topping10" value="green olives"/>
<label for="topping10">green olives</label>
<input type="checkbox" name="toppings[]" id="topping11" value="black olives"/>
<label for="topping11">black olives</label>
<input type="checkbox" name="toppings[]" id="topping12" value="jalapenos"/>
<label for="topping12">jalapenos</label>
<!-- this was still learning something new, right? Like 'hidden' input -->
<br>


<br>
<input type='hidden' name="glutenfree" id="false" value="no"/>
<input type="checkbox" name="glutenfree" id="true" value="yes"/>
<label for="true"><b>Gluten-Free Crust? </b> ($2.00 extra)</label>
<br>

<br>
<label><b>Specialty Instructions (Optional)</b></label>
<br>
<textarea id="text" name="instructions" 
style="height: 100px; width: 400px;">
</textarea>
<br>

<br>
<button>Calculate Price</button>
<a href="/">Never Mind</a>
</form>
</section>

<section>
<br>
---------------------------------------
<br>
This next part is here because my dumb butt spent 30-45 minutes on those check boxes 
when I was going to have to list the items anyway. 
<br>So here is that list for the 
sake of completing the lab.
<br>
<!-- Section for pointless code (because I used boxes) 
that is required (sorry, I'm tired and it's late) -->

 <ul>
 <c:forEach var="topping" items="${posToppings}">
 <li>${topping}</li>
 </c:forEach>
 </ul>

</section>

</body>
</html>