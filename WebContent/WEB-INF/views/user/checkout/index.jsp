<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<style>
	.main {
    	padding: 1em 0em;
	}
	.shoping_right {
	    float: right;
	    width: 25%;
	}
	.shoping_right p span {
    	color: #ff0000;
    	float: none;
    	margin-left: 10px;
	}
</style>
<div class="main">
	<div class="shoping_bag">
		<h4><img src="assets/images/small.jpg"><s:message code="checkout.title"/> / <span> 11 <s:message code="checkout.unit"/></span></h4>
		<div class="clearfix"></div>
	</div>
	<div class="shoping_bag1">
		<table class="table table-border" style="width: 100%">
			<thead>
				<tr>
					<th>#</th>
					<th><s:message code="checkout.table.name"/></th>
					<th><s:message code="checkout.table.price"/></th>
					<th><s:message code="checkout.table.discount"/></th>
					<th><s:message code="checkout.table.quantity"/></th>
					<th><s:message code="checkout.table.amount"/></th>
					<th>*</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<img src="assets/images/7.jpg"  class="img-responsive" alt="" width="90" height="65"/>
					</td>
					<td>
						<div class="shoping1_of_2">
							<h4><a href="#">men runnig shoe</a> </h4>
							<div>
								<h5><s:message code="checkout.table.code"/>: <b>SKU1175</b></h5>
								<h5><s:message code="checkout.table.size"/>: <b>XL</b></h5>		
							</div>		
						</div>
					</td>
					<td>123153123</td>
					<td>10%</td>
					<td>123</td>
					<td>19837219837219</td>
					<td>
						<ul class="s_icons">
							<li><a href="#"><img src="assets/images/s_icon3.png" alt=""></a></li>
						</ul>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="clearfix"></div>
	</div>
	<div class="shoping_bag2">
		<div class="shoping_left">
			<a class="btn1" href="" style="background-color: gray;"><s:message code="checkout.continue"/></a>
			<a class="btn1" href="checkout/"><s:message code="checkout.checkout"/></a>
		</div>
		<div class="shoping_right">
			<p class="tot"><s:message code="checkout.total"/><span class="color"> 6.000.000 VNĐ</span></p>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
