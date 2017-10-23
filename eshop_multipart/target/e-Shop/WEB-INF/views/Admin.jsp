<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="/WEB-INF/views/CommonHeader.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Admin</title>
</head>
<body>
  
<h3>Product details</h3>
<table class="table">
<thead>
<tr>
<th>Product id</th>
<th>Product image</th>
<th>Product name</th>
<th>Product price</th>
<th>Product quantity</th>
<th>Product description</th>
<th>Delete</th>
<th>Edit</th>
</tr>
</thead>
<c:forEach var="product" items="${prolist}">
<c:url value="/images/${product.productid}.jpg" var="imageurl"></c:url>
<tbody>
<tr>
<td>${product.productid}</td>
<td><img src="${imageurl}" height="50" width="50"></td>
<td>${product.productname}</td>
<td>${product.productprice}</td>
<td>${product.quantity }</td>
<td>${product.description}</td>
<td><a href="deleteproduct?pid=${product.productid}">Delete</a></td>
</tr>
</tbody>
</c:forEach>
</table>
</body>
</html>