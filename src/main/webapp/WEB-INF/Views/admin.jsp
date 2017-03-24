<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.dropbtn{
align:center;
width:160px;
}
h1 {
margin-top: 10em 10em 10em 0em;
}

</style>
</head>
<body>
<center>
<li class="dropdown" >
  <button class="dropbtn">Product
  <span class="caret"></span></button>
  <ul class="dropdown-content">
    <li><a href="product">Add Product</a></li>
    <li><a href="viewProduct">View Product</a></li>
  </ul>
</li>
<li class="dropdown">
				<button class="dropbtn" type="button" data-toggle="dropdown">Category
  <span class="caret"></span></button>
  <ul class="dropdown-content">
    <li><a href="category">Add Category</a></li>
    <li><a href="viewCategory">View Category</a></li>
  </ul>
</li>
				<li class="dropdown">
				<button class="dropbtn" type="button" data-toggle="dropdown">Suppliers
  <span class="caret"></span></button>
  <ul class="dropdown-content">
    <li><a href="supplier">Add Supplier</a></li>
    <li><a href="viewSupplier">View Supplier</a></li>
  </ul>
</li>

				<button class="dropbtn" type="button" data-toggle="dropdown"><a href="purchaseDetails">Purchase Details</a></button>
  
</center>
<c:choose>
<c:when test="${not empty displayAddSupplier}">
<%@ include file="supplier.jsp"%>
</c:when>
<c:when test="${not empty displayViewSupplier}">
<%@ include file="viewSupplier.jsp"%>
</c:when>
<c:when test="${not empty editSupplier}">
<%@ include file="editSupplier.jsp"%>
</c:when>
<c:when test="${not empty displayAddProduct}">
<%@ include file="product.jsp"%>
</c:when>
<c:when test="${not empty displayViewProduct}">
<%@ include file="viewProduct.jsp"%>
</c:when>
<c:when test="${not empty editProduct}">
<%@ include file="editProduct.jsp"%>
</c:when>
<c:when test="${not empty displayAddCategory}">
<%@ include file="category.jsp"%>
</c:when>
<c:when test="${not empty displayViewCategory}">
<%@ include file="viewCategory.jsp"%>
</c:when>
<c:when test="${not empty editCategory}">
<%@ include file="editCategory.jsp"%>
</c:when>
<c:when test="${not empty purchaseDetails}">
<%@ include file="userCart.jsp"%>
</c:when>
<c:otherwise>
<h1 align="left">Welcome Admin!!</h1>
</c:otherwise>
</c:choose>

</body>
</html>