<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<div class="head-bann">
	<div class="container">
		<div class="head-nav">
			<span class="menu"> </span>
			<ul class="megamenu skyblue">
				<li><a class="color1" href="index/"><s:message code="nav.home"/></a></li>
				<li><a class="color7" href="brands/"><s:message code="nav.brand"/></a>
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
				<li class="grid"><a class="color2" href="women/"><s:message code="nav.men"/></a></li>
				<li><a class="color4" href="#"><s:message code="nav.women"/></a></li>
				<li><a class="color5" href="#"><s:message code="nav.kid"/></a></li>
				<li><a class="color6" href="#"><s:message code="nav.sport"/></a></li>
				
				
				<li class="pull-right">
					<a class="dropdown-toggle" href="#" data-toggle="dropdown">
						<s:message code="nav.account"/>
					</a><%-- 
					<ul class="dropdown-menu">
						<li><a href=""><s:message code="nav.login"/></a></li>
						<li><a href=""><s:message code="nav.forgot"/></a></li>
						<li><a href=""><s:message code="nav.register"/></a></li>
						<li><a href=""><s:message code="nav.logoff"/></a></li>
						<li><a href=""><s:message code="nav.change"/></a></li>
						<li><a href=""><s:message code="nav.edit"/></a></li>
						<li class="divider"></li>
						<li><a href=""><s:message code="nav.order"/></a></li>
						<li><a href=""><s:message code="nav.item"/></a></li>
					</ul> --%>	
				</li>
				
				

				<div class="clearfix"></div>
			</ul>
		</div>
	</div>
</div>
<!-- script-for-nav -->
	<script>
		$("span.menu").click(function() {
		  $( ".head-nav ul" ).slideToggle(300, function() {
			// Animation complete.
		  });
		});
	</script>
<!-- script-for-nav -->
