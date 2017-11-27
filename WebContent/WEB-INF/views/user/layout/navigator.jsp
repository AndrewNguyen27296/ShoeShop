<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<style>
	.head-bann {
		margin-top: 90px; position: absolute; top: 0; width: 100%;
	}
	.login {
		position: relative;
	}
	.login .megapanel {
		position: absolute;
		right: 0;
		left: 0;
	}
	#loginForm span {
	    display: block;
	    padding: 0px 0px 2px 0px;
	}
</style>

<% int index = 1; %>
<div class="head-bann">
	<div class="container">
		<div class="head-nav">
			<span class="menu"> </span>
			<ul class="megamenu skyblue">
				<li><a class="color1" href="index/"><s:message code="nav.home" /></a></li>
				<li><a class="color7"><s:message code="nav.brand" /></a>
					<div class="megapanel">
						<div class="row">
							<c:forEach items="${brands}" var="b">
								<% if(index == 1) { %>
									<div class="col1">
										<div class="h_nav">
											<ul>
								<% } %>						
								<li><a href="brand/${b.id}">${b.name}</a></li>								
								<% 
									index++;
									if(index == 5) {
										index = 1;
								%>
											</ul>
										</div>
									</div>
								<% } %>
							</c:forEach>	
						</div>
					</div>
				</li>
				<li class="grid"><a class="color2" href="category/men"><s:message code="nav.men" /></a></li>
				<li><a class="color4" href="category/women"><s:message code="nav.women" /></a></li>
				<li><a class="color5" href="category/kid"><s:message code="nav.kid" /></a></li>
				<li><a class="color6" href="category/sport"><s:message code="nav.sport" /></a></li>
				<li class="login pull-right">
				<c:choose>
					<c:when test="${sessionScope.user != null}">
						<a>Xin chào, ${sessionScope.user.fullName}</a>
						<div class="megapanel" style="width: 100%;">
							<div class="row">
								<div class="col1">
									<div class="h_nav">
										<ul>	
											<li style="width: 200px;"><a href="order/list/">List Orders</a></li>
											<li style="width: 200px;"><a href="account/edit/">Edit Profiles</a></li>
									      	<li style="width: 200px;"><a href="account/change/">Change Password</a></li>
									      	<li style="width: 200px;"><a href="account/logout/">Log Out</a></li>	
										</ul>
									</div>
								</div>
							</div>
						</div>
					</c:when>
					<c:otherwise>
							<div id="ss-login-container">
								<a onclick="loginBoxToggle(); return false;" id="loginButton"><s:message code="header.login"/></a>
								<div id="loginBox">
									<form id="loginForm" action="account/login/" method="post">
										<fieldset id="body">
											<fieldset>
												<label for="id"><s:message code="header.username"/></label> 
												<input type="text" name="id" id="id" value="${cookie.uid.value}">
											</fieldset>
											<fieldset>
												<label for="password"><s:message code="header.password"/></label> <input
													type="password" name="password" id="password" value="${cookie.pwd.value}">
											</fieldset>
											<input type="submit" id="login" value="<s:message code="header.signin"/>">
											<label for="checkbox">
												<input type="checkbox" id="checkbox" name="remember"><i><s:message code="header.remember"/></i>
											</label>
										</fieldset>
										<span><a href="account/register/"><s:message code="header.register"/></a></span>
										<span><a href="account/forgot/"><s:message code="header.forgot"/></a></span>
									</form>
								</div>
							</div>
					</c:otherwise>
				</c:choose>							
				</li>	
				<div class="clearfix"></div>
			</ul>
		</div>
	</div>
</div>
<!-- script-for-nav -->
<script>
	$("span.menu").click(function() {
		$(".head-nav ul").slideToggle(300, function() {
			// Animation complete.
		});
	});
	
	hide = true;
	function loginBoxToggle() {
		if(hide) {
			$("#loginBox").css("display","block");
			hide = false;
		}
		else {
			$("#loginBox").css("display","none");
			hide = true;
		}
	}	
	
</script>
<!-- script-for-nav -->
