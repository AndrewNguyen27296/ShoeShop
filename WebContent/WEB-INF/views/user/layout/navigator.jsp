<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<style>
</style>
<div class="head-bann"
	style="margin-top: 90px; position: absolute; top: 0; width: 100%;">
	<div class="container">
		<div class="head-nav">
			<span class="menu"> </span>
			<ul class="megamenu skyblue">
				<li><a class="color1" href="index/"><s:message
							code="nav.home" /></a></li>
				<li><a class="color7" href="brands/"><s:message
							code="nav.brand" /></a>
					<div class="megapanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="">Adidas</a></li>
										<li><a href="">ASICS</a></li>
										<li><a href="">B.O.C</a></li>
										<li><a href="">Converse</a></li>
									</ul>
								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="">DrMartens</a></li>
										<li><a href="">Eastland</a></li>
										<li><a href="">Fila</a></li>
										<li><a href="">GBX</a></li>
									</ul>
								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="">Highpoint</a></li>
										<li><a href="">Impo</a></li>
										<li><a href="">Laredo</a></li>
										<li><a href="">Magnum</a></li>
									</ul>
								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="">Nike</a></li>
										<li><a href="">New Balance</a></li>
										<li><a href="">Puma</a></li>
										<li><a href="">Reebok</a></li>
									</ul>
								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="">Rocky</a></li>
										<li><a href="">Sporto</a></li>
										<li><a href="">Teva</a></li>
										<li><a href="">Timbaland</a></li>
									</ul>
								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="">Vans</a></li>
										<li><a href="women/">Levi</a></li>
										<li><a href="women/">BearPaw</a></li>
										<li><a href="women/">Sketchers</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col2"></div>
							<div class="col1"></div>
							<div class="col1"></div>
							<div class="col1"></div>
							<div class="col1"></div>
						</div>
					</div></li>
				<li class="grid"><a class="color2" href="category/men"><s:message
							code="nav.men" /></a></li>
				<li><a class="color4" href="#"><s:message code="nav.women" /></a></li>
				<li><a class="color5" href="#"><s:message code="nav.kid" /></a></li>
				<li><a class="color6" href="#"><s:message code="nav.sport" /></a></li>

				<li class="login pull-right">
					<div id="ss-login-container">
						<a href="#" id="loginButton"><span><s:message code="header.login"/></span></a>
						<div id="loginBox">
							<form id="loginForm">
								<fieldset id="body">
									<fieldset>
										<label for="email"><s:message code="header.email"/></label> 
										<input type="text" name="email" id="email">
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
				</li>				
				<div class="clearfix"></div>
			</ul>
		</div>
	</div>
</div>
<!-- script-for-nav -->
<script>
$(function() {
	$("span.menu").click(function() {
		$(".head-nav ul").slideToggle(300, function() {
			// Animation complete.
		});
	});
	
	$("#loginButton").click(function() {
		alert("clicked !!!");
		$("#loginBox").toggle();
	});
});
</script>
<!-- script-for-nav -->
