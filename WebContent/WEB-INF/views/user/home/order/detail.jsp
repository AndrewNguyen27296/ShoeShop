<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="col-md-9">
	<h2>Order Information</h2>
	<form:form action="order/checkout/" modelAttribute="order">
		<div class="row">
			<div class="form-group col-sm-4">
				<label>Customer</label>	
				<form:input path="customer.id" cssClass="form-control" readonly="true"/>
			</div>
			<div class="form-group col-sm-4">
				<label>Receiver</label>	
				<form:input path="receiver" cssClass="form-control" readonly="true"/>
			</div>
			<div class="form-group col-sm-4">
				<label>Order Date</label>	
				<form:input path="orderDate" cssClass="form-control" readonly="true"/>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-sm-4">
				<label>Require Date</label>	
				<form:input path="requireDate" cssClass="form-control" readonly="true"/>
			</div>
			<div class="form-group col-sm-4">
				<label>Address</label>	
				<form:input path="address" cssClass="form-control" readonly="true"/>
			</div>
			<div class="form-group col-sm-4">
				<label>Amount</label>	
				<fmt:formatNumber value="${order.amount}" pattern="###,###" var="amount"/>
				<form:input path="amount" cssClass="form-control" readonly="true" value="${amount}"/>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-sm-12">
				<label>Notes</label>
				<form:textarea path="description" rows="5" cssClass="form-control" readonly="true"/>
			</div>
			<div class="form-group col-sm-12">
				<button class="btn btn-default">Back to home</button>
			</div>
		</div>
		<hr>
		<div class="row">
			<h3>${message}</h3>
		</div>
	</form:form>
	<fieldset>
		<legend>Order Details</legend>
		<table class="table" border="1" style="width:100%">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Price</th>
					<th>Discount</th>
					<th>Quantity</th>
					<th>Amount</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${order.orderDetails}" var="d">
					<tr>
						<td>${d.id}</td>
						<td>${d.productSize.product.name}</td>
						<td><fmt:formatNumber value="${d.price}" pattern="###,###"/></td>
						<td>${d.discount}%</td>
						<td>${d.quantity}</td>
						<td><fmt:formatNumber value="${d.quantity*d.price*(1-(d.discount/100))}" pattern="###,###"/></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</fieldset>
</div>