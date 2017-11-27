<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<style>
	.main {
    	padding: 1em 0em;
	}
	.shoping_left {
	    float: left;
	    width: 30%;
	    margin-right: 3%;
	}
	.shoping_right {
	    float: right;
	    width: 60%;
	}
	.shoping_right p.tot {
	    font-size: 1.3em;
	    float: right;
	}
	.shoping_right p span {
    	color: #ff0000;
    	float: right;
    	margin-left: 10px;
	}
</style>
<script src="assets/js/shopping-cart.js"></script>
<div class="main col-md-9">
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
				<c:forEach items="${cart.items}" var="p">
					<tr>
						<td>
							<img src="assets/upload/products/files/${p.product.productImages[0].image}"  class="img-responsive" alt="" width="90" height="65"/>
						</td>
						<td>
							<div class="shoping1_of_2">
								<h5><a href="#">${p.product.name}</a> </h5>
								<div>
									<h5><s:message code="checkout.table.code"/>: <b>SKU${p.product.id}</b></h5>
									<h5><s:message code="checkout.table.size"/>: <b>${p.size.sizeUS}</b></h5>		
								</div>		
							</div>
						</td>
						<td><fmt:formatNumber value="${p.product.price}" pattern="###,###"/></td>
						<td>${p.product.discount}%</td>
						<td><input data-cart-update="${p.id}" value="${p.quantity}" type="number" min="1" max="20" style="width:50px;"></td>
						<td class="amt"><fmt:formatNumber value="${p.quantity*p.product.price*(1-(p.product.discount/100))}" pattern="###,###"/> Đ</td>
						<td>
							<ul class="s_icons">
								<li><a data-cart-remove="${p.id}"><img src="assets/images/s_icon3.png" alt=""></a></li>
							</ul>
						</td>
					</tr>				
				</c:forEach>
			</tbody>
		</table>
		<div class="clearfix"></div>
	</div>
	<div class="shoping_bag2">
		<div class="shoping_left">
			<a class="btn1" href="" style="background-color: gray;"><s:message code="checkout.continue"/></a>
			<a class="btn1" href="order/checkout/"><s:message code="checkout.checkout"/></a>
		</div>
		<div class="shoping_right">
			<p class="tot"><s:message code="checkout.total"/><span class="color"><fmt:formatNumber value="${cart.amount}" pattern="###,###"/> Đ</span></p>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
