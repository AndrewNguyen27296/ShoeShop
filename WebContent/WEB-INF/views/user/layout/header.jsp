<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

<div class="header" style="position: absolute;
    top: 0;
    width: 100%;
    background: #fefefe;">
	<div class="top_bg">
		<div class="container">
			<div class="header_top">
				<div class="logo">
					<a href=""><img src="assets/images/logo.png" alt="" /></a>
				</div>
				<div class="top_right">
					<ul>						
						<li style="margin-top: -30px;">
							<c:set var="cart" value="${sessionScope['scopedTarget.cart']}" />
							<div class="nn-cart" style="width: 300px;">
								<div class="panel panel-default">
									<div class="panel-body" style="width: 400px; height: 30px; padding:0px;">
										<img class="col-sm-5 nn-cart-img" src="assets/images/shoppingcart.gif" style="width: 50px;height: 30px;"/>
										<ul class="col-sm-7" style="margin-top: 5px;">
											<li><span id="count">${cart.count}</span> <s:message code="g.cart.item" />
											</li>
											<li><span id="amount"><fmt:formatNumber value="${cart.amount}" pattern="###,###"/></span> Đ</li>
											<li><a href="shopping-cart/view/"><s:message code="g.cart.view" />
											</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</li>						
					</ul>

					<div class="language pull-right" style="margin-top: 0px;">
						<ul style="">
							<li><img src="assets/images/flags/if_flag-usa_748050.png" />
							</li>
							<li><a href="?lang=en" style="font-size: xx-small;">English
									||</a></li>
							<li><img
								src="assets/images/flags/if_flag-vietnam_748133.png" /></li>
							<li><a href="?lang=vi" style="font-size: xx-small;">Tiếng
									Việt</a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
</div>