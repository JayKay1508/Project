<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link
	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

<!-- JQuery -->
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

<link
	href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css"
	rel="stylesheet">
	
<style>
div.menu
{
    
    margin: 0 auto;
	padding: 2.5em 3em;
	text-align: right;
	width: 100%;
}

div.menu a
{
    color: white;
    text-decoration: none;
    font: 20px Raleway;
    margin: 0px 10px;
    padding: 10px 10px;
    position: relative;
    z-index: 0;
    cursor: pointer;
}
.red
{	
    background: #f44336;
}
div.borderYtoX a:before, div.borderYtoX a:after
{
    position: absolute;
    opacity: 0.5;
    height: 100%;
    width: 2px;
    content: '';
    background: #FFF;
    transition: all 0.3s;
}

div.borderYtoX a:before
{
    left: 0px;
    top: 0px;
}

div.borderYtoX a:after
{
    right: 0px;
    bottom: 0px;
}

div.borderYtoX a:hover:before, div.borderYtoX a:hover:after
{
    opacity: 1;
    height: 2px;
    width: 100%;
    }
    
.dropbtn {
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

ul {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
    }

</style>
</head>
<body>
<c:if test="${pageContext.request.userPrincipal.name != null }">
Welcome ${pageContext.request.userPrincipal.name}
</c:if>
	
		<div class="menu red borderYtoX">
			
				<a href="home">Home</a>
				<a href="aboutUs">About Us</a>
				
				<c:if test="${not empty loginUser}">
				<a href="listOfProducts">Browse all products</a>
				<a href="myCart">My Cart</a>
				<!-- <a href="newbillingAddress">BillingAddress</a>
				<a href="newshippingAddress">ShippingAddress</a>
 -->
				</c:if>
				
				<c:if test="${pageContext.request.userPrincipal.name == null }">
				<a href="registerCustomer">Register</a>
				<a href="loginpage">Login</a>
			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name != null }">
				<a href="j_spring_security_logout">Logout</a>
</c:if>
		</div>
		

	

</body>
</html>