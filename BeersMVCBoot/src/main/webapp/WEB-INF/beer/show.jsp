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
<!--   <meta name="description" content="The HTML5 Herald">
  <meta name="author" content="SitePoint"> -->

<!-- <link rel="stylesheet" href="WEB-INF/css/style.css" type="text/css"> -->
 <style type="text/css">
    <%@include file="../css/style.css" %>
</style> 

<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css"> --%>

</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/">Find your beer...</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="addBeerView.do">Add a beer</a>
      </li>
   <!--    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Edit
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Add a beer</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Edit a beer</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Delete a beer</a>
        </div>
      </li> -->
     
    </ul>
    <form action="getBeersbyKey.do" method="GET" class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" name="keyword" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Show Beers</button>
    </form>
  </div>

</nav>


<div>
<c:if test="${not empty beer.logoUrl  }">
			<img src="${beer.logoUrl }" alt="Add Beer Logo" style="width:75px;height:75px;">
			</c:if>
			<h1>${beer.id }</h1>
  <h1>${beer.name}  (${beer.style})</h1>
  <p><h2>ABV ${beer.abv}%</h2>
  <p><h3>Brewery: ${beer.brewery}</h3>
  <p><h4>Country: ${beer.country}</h4>
  
</div>


<a class="btn btn-primary" href="updateBeerView.do?id=${beer.id}" role="button">Update</a>

<a class="btn btn-primary" href="deleteBeer.do?id=${beer.id}" role="button">Delete</a>

  <script src="js/scripts.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>

</html>