<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
</head>
<body>
<div class="container">
		<div class="jumbotron" style="background-color:#EAECEE">
		
		<h3 align="center" style="color: #27A4F7">Add new Product</h3>		
		<form class="form-horizontal" action="addProduct" method="post" enctype="multipart/form-data">
		
			
			<div style="color: #27A4F7" class="form-group">
			<label for="text">Product Name:</label>
				<input class="form-control" placeholder="Enter the product name" type="text"  id="productname" type="text" name="name">
			</div>
			
			<div style="color: #27A4F7" class="form-group">
			<label for="text">Product Description:</label>
				<input class="form-control" placeholder="Enter the product description" type="text"  id="productDescription" type="text" name="description">
			</div>
			
			<div style="color: #27A4F7" class="form-group">
			<label for="text">Category:</label>
				<select name="category">
				<option value="">Select Category</option>
				<c:forEach items="${categoryList}" var="category">
				<option value="${category.categoryName}">${category.categoryName}</option>
				
				</c:forEach>
				</select>
			</div>
			<div style="color: #27A4F7" class="form-group">
			<label for="text">Manufacturer:</label>
				<select name="mfg">
				<option value="">Select Supplier</option>
				<c:forEach items="${supplierList}" var="supplier">
				<option value="${supplier.name}">${supplier.name}</option>
				
				</c:forEach>
				</select>
			</div>
			
			<div style="color: #27A4F7" class="form-group">
			<label>Price:</label>
				<input class="form-control" placeholder="Price" type="text"  id="price" type="text" name="price">
			</div>
			<div style="color: #27A4F7" class="form-group">
			<label>Quantity:</label>
				<input type="text" name="quantity">
			</div>
			<div style="color: #27A4F7" class="form-group">
			<label>Product image:</label>
				<input type="file" name="productImage" accept=".jpg,.png,.jpeg">
			</div>
		
			<button style="background-color: #27A4F7;color:white" type="submit" name="submit" value="addProduct" class="btn btn-default">Upload</button>
			
		
		</form>
		
		</div>
	</div>
</body>
</html>