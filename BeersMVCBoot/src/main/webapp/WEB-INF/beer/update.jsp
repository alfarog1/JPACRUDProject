<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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

<div>

<h3>Fill out the beer you would like to add...</h3>

</div>





<form:form action="updateBeers.do" method="POST" modelAttribute="beers">
		   <table>
		     <tr>
               <td><label path = "id"> </label></td>
               <td><form:input type="hidden" path = "id" /></td>
            </tr>
            <tr>
               <td><label path = "name">Beer Name</label></td>
               <td><form:input type="text" path = "name" /></td>
            </tr>
            <tr>
               <td><form:label path = "brewery">Brewery</form:label></td>
               <td><form:input type="text" path = "brewery" /></td>
            </tr>
            <tr>
               <td><form:label path = "style">Style</form:label></td>
               <td><form:input type="text" path = "style" /></td>
            </tr>
             <tr>
               <td><form:label path = "abv">ABV</form:label></td>
               <td><form:input type="text" path = "abv" /></td>
            </tr>
             <tr>
               <td><form:label path = "country">Country</form:label></td>
               <td><form:input type="text" path = "country" /></td>
            </tr>
            <tr>
               <td colspan = "2">
                  <input type="submit" value="Add Beer" >
               </td>
            </tr>
         </table>  

				
		</form:form>





  <script src="js/scripts.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>

</html>