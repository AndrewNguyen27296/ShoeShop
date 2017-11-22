<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<div class="header">
	<div class="top_bg">
		<div class="container">
			<div class="header_top">
				<div class="logo">
					<a href="/"><img src="assets/images/logo.png" alt="" /></a>
				</div>
				<div class="top_right">
					<ul>
						<li><a href="registration/"><s:message code="header.create"/> </a></li>

						<li class="login">
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
						</li>
					</ul>

					<div class="language" style="margin-top: 1em;">
						<ul style="">
							<li><img src="assets/images/flags/if_flag-usa_748050.png" />
							</li>
							<li><a href="index/?lang=en" style="font-size: xx-small;">English
									||</a></li>
							<li><img
								src="assets/images/flags/if_flag-vietnam_748133.png" /></li>
							<li><a href="index/?lang=vi" style="font-size: xx-small;">Tiếng
									Việt</a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
</div>