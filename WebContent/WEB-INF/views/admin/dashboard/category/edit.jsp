<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<style>
span.error {
	color: red;
	font-weight: bolder;
	font-size: 1.1em;
}

span.success {
	color: green;
	font-weight: bolder;
	font-size: 1.1em;
}

.kj-button {
	background-color: #F54D4D;
}

.kj-button:focus {
	background-color: #F54D4D;
}

.kj-button:hover {
	background-color: #FF6161;
}
</style>
<!-- Start Page Header -->
<div class="page-header">
	<h1 class="title">Dashboard</h1>
	<ol class="breadcrumb">
		<li><a href="admin/dashboard/">Dashboard</a></li>
		<li><a href="admin/dashboard/list/categories/">Categories</a></li>
		<li><a href="javascript:void(0);">Edit</a></li>
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
		<div class="col-md-12 col-lg-8 col-lg-offset-2">
			<div class="panel panel-default">
				<div class="panel-title">Edit category</div>

				<div class="panel-body">
					<form:form action="admin/dashboard/edit/category/"
						modelAttribute="cate" method="POST">
						<form:hidden path="id"/>
						<div class="form-group">
							<label for="name" class="form-label">Name</label>
							<form:input path="name" cssClass="form-control" />
						</div>
						<div class="form-group">
							<label for="nameVN" class="form-label">Name VN</label>
							<form:input path="nameVN" cssClass="form-control" />
						</div>
						<div class="form-group">
							<span class="error">${error}</span><span class="success">${success}</span>
							<button type="submit"
								class="btn btn-default pull-right kj-button">Save</button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<!-- End Row -->
</div>
<!-- END CONTAINER -->
<!-- //////////////////////////////////////////////////////////////////////////// -->