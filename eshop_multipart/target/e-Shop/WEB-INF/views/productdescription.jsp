<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width,height=device-height,initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<title></title>
</head>
<body>
<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
				<c:url value="/resources/${product.productid }.jpg" var="imageurl"></c:url>
				
					<div class="preview col-md-6">

					 	<div class="preview-pic tab-content">
							<div class="tab-pane active" id="pic-1">
				         <img src="${imageurl }" height="300" width="300">
							</div>  

						</div>  
					<!--	<ul class="preview-thumbnail nav nav-tabs">
							<li class="active"><a data-target="#pic-1" data-toggle="tab"><c:url
										value="/resources/images/${product.productid }.png" var="imageurl"></c:url>
									<img src="${imageurl }" height="300" width="300"> </a></li>
						</ul>    -->

					</div>
					<div class="details col-md-6">
						<h3 class="product-title">${product.productname }</h3>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							<span class="review-no">41 reviews</span>
						</div>
						<p class="product-description">${product.description }</p>
						<h4 class="price">
							current price: <span>${product.productprice }</span>
						</h4>
						<p class="vote">
							<strong>91%</strong> of buyers enjoyed this product! <strong>(87
								votes)</strong>
						</p>
						<c:if  test="${product.quantity==0 }">
                       Out Of Stock
                        </c:if>
                        <c:if test="${product.quantity!=0 }"> 
                        <c:url value="/cart/addcart/${product.productid }" var="load"></c:url>
						<form action="${load}">
						<h4>Enter Units<input  type="text" name="units"></h4><br>
						<div class="action">
							<button class="add-to-cart btn btn-default" type="button">add to cart</button>
							<button class="like btn btn-default" type="button">
								<span class="fa fa-heart"></span>
							</button>
						</div>
						</form>
						</c:if>
						<c:url value="/returnproduct" var="url"></c:url>
<a href="${url}"><h4>Back to product list</h4></a><br>
						
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>