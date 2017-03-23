<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script>
function goBack() {
    window.history.back();
}
</script>
<div style="margin-left: 200px;">
<table  class="table" width="100%" class="view" style="margin-top: 1em; margin-right: 6em; ">
<tr>
<td colspan="5" align="center"><h4 >My Cart</h4></td>
</tr>
	<tr>
	    <th align="left">S.No</th>
	
	
		<th align="left">ProductName</th>
		
		<th align="left">Quantity</th>
		<th align="left">Price</th>
	<th align="left">Total</th>
		<th align="left">Delete</th>		
	</tr>
	<c:forEach items="${cartList}" var="cart" varStatus="status">
		<tr>
			<td>${status.count}</td>			
			<td>${cart.productName}</td>		
			<td>${cart.quantity}</td>
			<td>${cart.price}</td>
			<td>${cart.total}</td>
			<td><a href="deletecart/${cart.cartId}">delete</a></td>
		</tr>
	</c:forEach>
	<tr style="margin-top: 3em; ">
	<td colspan="3" align="right">Grand Total Amount :</td>
	<td colspan="2">${total}</td>
	</tr>
	
</table>
<div class="row">
<button  onclick="goBack()" class="btn btn-default" style="float: left;">Go Back</button>
<div class="dropdown" style="margin-left: 8em;">
<button type="button" name="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" style="float: left;"> Place Order<span class="caret"></span> </button>
<ul class="dropdown-menu">
    
      <li><a href="order/${pageContext.request.userPrincipal.name}">Cash On Delivery</a></li>
    </ul>
  </div>
</div>
  
  </div>
</body>
</html>