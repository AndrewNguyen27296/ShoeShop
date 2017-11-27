<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="col-md-9">
	<h2>Checkout</h2>
	<form:form action="order/checkout/" modelAttribute="order">
		<div class="row">
			<div class="form-group col-sm-4">
				<label>Customer</label>	
				<form:input path="customer.id" cssClass="form-control" readonly="true"/>
			</div>
			<div class="form-group col-sm-4">
				<label>Receiver</label>	
				<form:input path="receiver" cssClass="form-control"/>
			</div>
			<div class="form-group col-sm-4">
				<label>Order Date</label>	
				<form:input path="orderDate" cssClass="form-control" readonly="true"/>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-sm-4">
				<label>Require Date</label>	
				<form:input path="requireDate" cssClass="form-control"/>
			</div>
			<div class="form-group col-sm-4">
				<label>Address</label>	
				<form:input path="address" cssClass="form-control"/>
			</div>
			<div class="form-group col-sm-4">
				<label>Amount</label>	
				<form:input path="amount" cssClass="form-control" readonly="true"/>
			</div>
		</div>
		<div class="row">
			<div class="from-group col-sm-12">
				<label>Notes</label>
				<form:textarea path="description" rows="5" cssClass="form-control"/>
			</div>
		</div>
		<br>
		<button class="btn btn-default">Purchase</button>
		<div class="row">
			<h3>${message}</h3>
		</div>
	</form:form>
</div>