 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/CartController.js" />"></script>
<style>
.table{
width: 50%;
}
</style>
</head>
<body ng-app="addToCartApp" ng-controller="addToCartCtrl">
<script>
function goBack() {
    window.history.back();
}
</script>
<h2 align="center" style="margin-top: 0em; margin-bottom: -2em;">${product.name}</h2>
<img alt="${product.name}" src="../resources/productImages/ProductId${product.pid}" width="300" height="300" align="left" margin: 0px 15px 15px 0px;/>
<div style="margin: 0px 10px 0px 300px">
<table class="table">
<tr><td>Available</td></tr>
<tr><td>Product Name : ${product.name}</td><br></tr>
<tr><td>Product Description : ${product.description}</td><br></tr>
<tr><td>Product Price : ${product.price}</td><br></tr>
<tr><td>Manufacturer: ${product.mfg}</td></tr>
</table>
<b style="color:red">${message}</b>
<button class="add-to-cart btn btn-default" ng-click="addtocart('${product.pid}')"type="button">add to cart</button>
<button class="btn btn-default" onclick="goBack()">Go Back</button>
</div>

</body>
</html>