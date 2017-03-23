<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="middle">Welcome ${pageContext.request.userPrincipal.name}!!</h1>
<c:choose>
<c:when test="${not empty productDetails}">
<%@ include file="productDetails.jsp"%>
</c:when>

<c:otherwise><%@ include file="productlist.jsp"%>
</c:otherwise>
</c:choose>
</body>
</html>