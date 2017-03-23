<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
* {
    box-sizing: border-box;
}
.list {
    width: 30%;
    height: 50%;
    float: left;
    padding: 18px;
   
}
h3 { 
    display: block;
    font-size: 1.17em;
    margin-top: 1em;
    margin-bottom: 1em;
    margin-left: 1em;
    margin-right: 1em;
    font-weight: bold;
}
img{
width: 50%;
}
</style>
</head>
<body>
	<h2 align="center">List of Products</h2>
	
	<c:forEach items="${productList}" var="product">
	<div class="list">
	<a href="<spring:url value="productDetails/${product.pid}"/>">
	<img src="<c:url value="resources/productImages/ProductId${product.pid}"/>" alt="${product.name}" width="100" height="100"/></a>
	<h3>
	${product.name}
	</h3>
	
<div id="container"><span>&#x20B9;</span>${product.price}</div>
	</div>

	</c:forEach>
	

</body>
</html>