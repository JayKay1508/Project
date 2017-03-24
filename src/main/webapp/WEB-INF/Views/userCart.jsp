<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h2>Purchase Details</h2>
<table class="table">
  <tr>
  <th>Serial Number</th>
  <th>Cart Id</th>
    <th>User Id </th>
    <th>User Name</th>
    <th>Product Id</th>
    <th>Product Name</th>
    <th>Price</th>
    <th>Total</th>
    <th>Quantity</th>
    <th>Status</th>
    <th>Order Date</th>
    <th>Days</th>
  </tr>
  <c:forEach items="${cartList}" var="cart" varStatus="status">
  <tr>
  <td>${status.count}</td>
   <td>${cart.cartId}</td>
    <td>${cart.userId}</td>
    <td>${cart.userName}</td>
    <td>${cart.productId}</td>
    <td>${cart.productName}</td>
    <td>${cart.price}</td>
    <td>${cart.total}</td>
    <td>${cart.quantity}</td>
    <td>${cart.status}</td>
    <td>${cart.addDate}</td>
    <td>${cart.days}</td>
    
    
  </tr>
 </c:forEach>
</table>
</body>
</html>