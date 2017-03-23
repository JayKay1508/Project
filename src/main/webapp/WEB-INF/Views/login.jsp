<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="">
<h2>LOGIN</h2>
	<br>
	<form action="login" method="post">
	<b style="color:red">${message}</b>
	<div class="form-group">	
		<label for="username">Enter Username</label>
		<input type="text" class="form-control" name="username" placeholder="username"> 
		</div>
		<div class="form-group">
		<label for="password">Enter password</label>
			<input type="password" class="form-control" name=password placeholder="password">
		</div>
		<c:if test="${not empty error}">
				<div class="error"><b>${error}</b></div>
	 			</c:if> 
				<c:if test="${not empty logout}">
			<div class="msg"><b>${logout}</b></div>
				</c:if>				
				
		<button type="submit" class="btn btn-default" value="submit">Submit</button>
</form>
</div>
</body>
</html>