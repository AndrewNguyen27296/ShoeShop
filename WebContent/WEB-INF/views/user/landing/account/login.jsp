<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>
	<h2>Login</h2>
	${message}
	<form action="account/login.php" method="post">
		<div class="form-group">
			<label>Username</label>
			<input name="id" class="form-control" value="${cookie.uid.value}">
		</div>
		<div class="form-group">
			<label>Password</label>
			<input name="password" class="form-control" value="${cookie.pwd.value}">
		</div>
		<div class="form-group">
			<label>
				<input name="remember" type="checkbox">
				Remember me?
			</label>
		</div>
		
		<div class="form-group">
			<button class="btn btn-default">
				<span class="glyphicon glyphicon-log-in"></span> 
				Login
			</button>
		</div>
	</form>
</body>
</html>