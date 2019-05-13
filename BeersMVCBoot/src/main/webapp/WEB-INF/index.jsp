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




<div class="center">
<!-- 
	<form action="getBeersbyKey.do" method="GET">
		Search: <input type="text" name="keyword" /> <input type="submit"
			value="Show Beers" />
	</form>
			 -->
<!-- 	<p>
	<p>
	<form action="addBeerView.do" method="GET">
		<input type="submit"
			value="Add a beer" />
	</form>
	 -->
	<!-- <ul> -->
	<div class="CTest" > 
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  

	
		<div class="carousel-inner v-2" role="listbox">
		<div class="carousel-item active">
		<div class="card text-center" style="width: 13rem;">
  					<div class="card-body">
		
		<img class="card-img-top" src="https://www.contegix.com/wp-content/uploads/2017/06/test.png" alt="First Slide">
		
		</div>
		</div>
		</div>
		<c:forEach var="beer" items="${beerList }">
			
			<div class="carousel-item">
		
		 	
				<div class="card text-center" style="width: 13rem;">
  					<div class="card-body">
   						 <h5 class="card-title"><a href="getBeers.do?bId=${beer.id }" class="btn btn-dark"> ${beer.name} </a></h5>
    						<p class="card-text">
    					
    					<c:if test="${not empty beer.logoUrl  }">
						<img src="${beer.logoUrl }" alt="Get a better url for the Beer Logo" style="width:75px;height:75px;">
						</c:if>
					</div>
				</div>
				
				
			</div>
		
		</c:forEach>
			
		  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  </div>
  </div>
  </div>
  </div>
  
	<!-- </ul> -->

<%-- 

 <div class="flex-container">
    <div class="cards">
      

  	<c:forEach var="beer" items="${beerList }">
		  <li class="flex-item">
			<div class="front">
				<div class="card text-center" style="width: 13rem;">
  					<div class="card-body">
   						 <h5 class="card-title"><a href="getBeers.do?bId=${beer.id }" class="btn btn-dark"> ${beer.name} </a></h5>
    						<p class="card-text">
    					
    					<c:if test="${not empty beer.logoUrl  }">
						<img src="${beer.logoUrl }" alt="Get a better url for the Beer Logo" style="width:75px;height:75px;">
						</c:if>
            </div>
					<div class="card text-center" style="width: 13rem;">
  					<div class="card-body">
					   <div class="back">
					   ABV: ${beer.abv } <br>
					   Brewery: ${beer.brewery } <br>
					   Country: ${beer.country } <br>
           				 </div>
            </div>
            </div>
            
					</div>
				</div>
		
		
   </li>
	</c:forEach>
   
</div>
</div>
<!-- </ul> -->

 --%>

 <div class="flex-container">

  	<c:forEach var="beer" items="${beerList }">
    <div class="cards">
<div class="flip-card">
  <div class="flip-card-inner">
    						<div class="card-text">
    
    
    
     	 <h5 <%-- class="card-title"><a href="getBeers.do?bId=${beer.id }" class="btn btn-dark" --%>> ${beer.name} <!-- </a> --></h5>
    					
    					<c:if test="${not empty beer.logoUrl  }">
						<img src="${beer.logoUrl }" alt="Get a better url for the Beer Logo" style="width:75px;height:75px;">
						</c:if>
    <div class="flip-card-front">
      
      
    </div>
  		</div>
    <div class="flip-card-back">
    
    
    
    
      ABV: ${beer.abv } <br>
					   Brewery: ${beer.brewery } <br>
					   Country: ${beer.country } <br>
					   <h5 class="card-title"><a href="getBeers.do?bId=${beer.id }" class="btn btn-dark"> ${beer.name} </a></h5>
      
    </div>
  </div>
</div>
	</div>
    </c:forEach>  
      

</div>







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