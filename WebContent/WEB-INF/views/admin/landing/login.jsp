<%@ page pageEncoding="utf-8"%>

<link rel="stylesheet" href="assets/admin/css/admin-login.css" />
<div class="login-form">
	<form action="admin/login/" method="POST">
		<div class="top">
			<img style="margin-top: 20px;" src="assets/images/logo.png"
				alt="icon">
		</div>
		<div class="form-area">
			<div class="group">
				<input type="text" class="form-control kj-input"
					placeholder="Username" name="id"> <i class="fa fa-user kj-icon"></i>
			</div>
			<div class="group">
				<input type="password" class="form-control kj-input"
					placeholder="Password" name="password"> <i class="fa fa-key kj-icon"></i>
			</div>
			<div class="checkbox checkbox-primary">
				<input id="checkbox101" type="checkbox" checked> 
				<label for="checkbox101"> Remember Me</label>
			</div>
			<button type="submit" class="btn btn-default btn-block kj-button">LOGIN</button>
		</div>
	</form>
	<div class="footer-links row">
		<div class="col-xs-12 text-center">
			<a href="admin/forgot/" class="kj-link"><i class="fa fa-lock"></i> Forgot
				password</a>
		</div>
	</div>
</div>