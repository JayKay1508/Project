<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
header {
	background-color: #27A4F7;
	color: white;
	padding: 10px 50px 40px 50px;
}
body {
	background-color: white;
}
button {
	background-color: white;
	color: #27A4F7;
	width: 180px;
}
.carousel-inner>.item>img {
	width: 1500px;
	height: 500px;
}
form {
	color: white;
}
</style>
</head>
<body>
	
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">


				<div class="item active">
					<img src="<c:url value="resources/image/FingerPhone1.jpg"/>" alt="Chania">
				</div>
				
				<div class="item">
					<img src="<c:url value="resources/image/FingerPhone2.jpg"/>" alt="Chania">
				</div>
				
				<div class="item">
					<img src="<c:url value="resources/image/Li-Fi.jpg"/>" alt="Chania">
				</div>

				<div class="item">
					<img src="<c:url value="resources/image/VR.jpg"/>" alt="Chania">
				</div>

				
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				
			</a>
		</div>
	<%@ include file="productlist.jsp"%>
</body>

</html>