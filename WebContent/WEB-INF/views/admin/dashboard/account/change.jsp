<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- Start Page Header -->
<div class="page-header">
	<h1 class="title">Dashboard</h1>
	<ol class="breadcrumb">
		<li><a href="admin/dashboard/">Dashboard</a></li>
		<li><a href="admin/dashboard/list/products/">Products</a></li>
	</ol>

	<!-- Start Page Header Right Div -->
	<div class="right">
		<div class="btn-group" role="group" aria-label="...">
			<a href="admin/dashboard/" class="btn btn-light">Dashboard</a> <a
				href="#" class="btn btn-light"><i class="fa fa-refresh"></i></a> <a
				href="#" class="btn btn-light"><i class="fa fa-search"></i></a> <a
				href="#" class="btn btn-light" id="topstats"><i
				class="fa fa-line-chart"></i></a>
		</div>
	</div>
	<!-- End Page Header Right Div -->

</div>
<!-- End Page Header -->
<!-- //////////////////////////////////////////////////////////////////////////// -->
<!-- START CONTAINER -->
<div class="container-padding">
	<!-- Start Row -->
	<div class="row">
		<div class="col-md-12 col-lg-7 col-lg-offset-3">
			<div class="panel panel-default">
				<div class="panel-title">
					Change password
				</div>

				<div class="panel-body">
					<form action="admin/dashboard/change/password/" method="POST">
						<div class="form-group">
							<label for="id" class="form-label">Username</label>
							<input class="form-control" name="id"/>
						</div>
						<div class="form-group">
							<label for="password" class="form-label">Current password</label>
							<input class="form-control" name="password" type="password"/>
						</div>
						<div class="form-group">
							<label for="password1" class="form-label">New password</label>
							<input class="form-control" name="password1" type="password"/>
						</div>
						<div class="form-group">
							<label for="password2" class="form-label">Confirm new password</label>
							<input class="form-control" name="password2" type="password"/>
						</div>
						<button type="submit" class="btn btn-default pull-right">Change</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- End Row -->
</div>
<!-- END CONTAINER -->
<!-- //////////////////////////////////////////////////////////////////////////// -->