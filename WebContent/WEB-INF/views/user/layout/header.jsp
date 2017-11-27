<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

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
												<li>$ <span id="amount">${cart.amount}</span></li>
												<li><a href="shopping-cart/view/"><s:message code="g.cart.view" />
												</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
						</li>
						
						<%-- <li><a href="registration/"><s:message code="header.create"/> </a></li> --%>

						<%-- <li class="login">
							<div id="loginContainer">
								<a href="#" id="loginButton"><span><s:message code="header.login"/></span></a>
								<div id="loginBox">
									<form id="loginForm">
										<fieldset id="body">
											<fieldset>
												<label for="email"><s:message code="header.email"/></label> <input type="text"
													name="email" id="email">
											</fieldset>
											<fieldset>
												<label for="password"><s:message code="header.password"/></label> <input
													type="password" name="password" id="password">
											</fieldset>
											<input type="submit" id="login" value="<s:message code="header.signin"/>"> <label
												for="checkbox"><input type="checkbox" id="checkbox">
												<i><s:message code="header.remember"/></i></label>
										</fieldset>
										<span><a href="#"><s:message code="header.forgot"/></a></span>
									</form>
								</div>
							</div>
						</li> --%>
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