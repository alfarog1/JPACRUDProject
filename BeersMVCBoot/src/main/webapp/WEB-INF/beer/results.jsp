<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>

<html lang="en">
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<meta charset="utf-8">

  <title>Beers</title>

 <style type="text/css">
    <%@include file="../css/style.css" %>
</style> 

</head>

<body>

<c:if test="${empty beerList }">
<h4>No beers found...</h4>
</c:if>
	
	<ul>
		<c:forEach var="beer" items="${beerList }">
		
<div>
  <h4>${beer.name} (${beer.style})</h4>
  <p><h3>${beer.abv}</h3></p>
  <p><h2>${beer.brewery}</h2></p>
</div>
<p>

</c:forEach>
	</ul>
	
	<div>

		<form action="/" method="GET">
			<input type="submit" value="Home">
		</form>

	</div>
	

  <script src="js/scripts.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>

</html>