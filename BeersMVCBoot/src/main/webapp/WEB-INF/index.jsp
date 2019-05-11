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
    <%@include file="css/style.css" %>
</style> 

<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css"> --%>

</head>

<body>

	<div id="test_logo"></div>
	<h1>Find your beer</h1>

	<!-- <form action="getBeers.do" method="GET">
		Beer ID: <input type="text" name="bId" /> <input type="submit"
			value="Show Beer" />

	</form>
	<p> -->
	<form action="getBeersbyKey.do" method="GET">
		Search: <input type="text" name="keyword" /> <input type="submit"
			value="Show Beers" />

	</form>
	<p>
	<p>
	<form action="addBeerView.do" method="GET">
		<input type="submit"
			value="Add a beer" />
	</form>
	
	<ul>
		<c:forEach var="beer" items="${beerList }">

			<li><a href="getBeers.do?bId=${beer.id }"> ${beer.name} </a></li>
			<p>
		</c:forEach>
	</ul>




	<script src="js/scripts.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>

</html>