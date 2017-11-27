<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="col-md-9">
	<h2>List Orders</h2>
	<table class="table" border="1" style="width: 100%">
		<thead>
			<tr>
				<th>Id</th>
				<th>Order Date</th>
				<th>Require Date</th>
				<th>Receiver</th>
				<th>Amount</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${orders}" var="o">
				<tr>
					<td>${o.id}</td>
					<td><fmt:formatDate value="${o.orderDate}" pattern="dd / MM / yyyy"/></td>
					<td><fmt:formatDate value="${o.requireDate}" pattern="dd / MM / yyyy"/></td>
					<td>${o.receiver}</td>
					<td><fmt:formatNumber value="${o.amount}" pattern="###,###"/></td>
					<td>
						<a class="btn btn-sm btn-info" href="order/detail/${o.id}/">Detail</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>