<%@ page pageEncoding="utf-8"%>
<style>
div.error {
	color: red;
	font-weight: bolder;
	font-size: 1.1em;
	margin-bottom: 15px;
}

div.success {
	color: green;
	font-weight: bolder;
	font-size: 1.1em;
	margin-bottom: 15px;
}
</style>
<link rel="stylesheet" href="assets/admin/css/admin-login.css" />
<div class="login-form">
	<form action="admin/forgot/" method="POST">
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
				<input type="email" class="form-control kj-input"
					placeholder="Email" name="email"> <i class="fa fa-envelope kj-icon"></i>
			</div>
			<div class="group">
				<input type="password" class="form-control kj-input"
					placeholder="New password" name="password"> <i class="fa fa-key kj-icon"></i>
			</div>
			<div class="error">${error}</div>
			<div class="success">${success}</div>
			<button type="submit" class="btn btn-default btn-block kj-button">RESET PASSWORD</button>
		</div>
	</form>
</div>