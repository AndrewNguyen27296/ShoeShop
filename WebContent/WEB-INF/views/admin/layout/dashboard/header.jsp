<%@ page pageEncoding="utf-8"%>
<style>
	a.logo span {
		font-size: .8em;
	}
	.fa:before:hover {
		color: #FFF;
	}
</style>
<div id="top" class="clearfix" style="background-color: #F54D4D;">
	<!-- Start App Logo -->
	<div class="applogo">
		<a href="index.html" class="logo"><span>ShoeShop</span></a>
	</div>
	<!-- End App Logo -->

	<!-- Start Sidebar Show Hide Button -->
	<a class="sidebar-open-button"><i class="fa fa-bars"></i></a>
	<a class="sidebar-open-button-mobile"><i
		class="fa fa-bars"></i></a>
	<!-- End Sidebar Show Hide Button -->

	<!-- Start Top Right -->
	<ul class="top-right">
		<li class="dropdown link">
			<a href="#" data-toggle="dropdown" class="dropdown-toggle profilebox" style="padding-top: 3px;">
				<img src="assets/admin/img/user.png"	alt="img">
				<b>Hello, ${sessionScope["master"].fullName}</b>
				<span class="caret"></span>
			</a>
			<ul class="dropdown-menu dropdown-menu-list dropdown-menu-right">
				<li role="presentation" class="dropdown-header">Profile</li>
				<li><a href="admin/dashboard/edit/profile/"><i class="fa falist fa-inbox"></i>Edit profiles</a></li>
				<li><a href="admin/dashboard/change/password/"><i class="fa falist fa-file-o"></i>Change password</a></li>
				<li class="divider"></li>
				<li><a href="admin/dashboard/logout/"><i class="fa falist fa-power-off"></i>Logout</a></li>
			</ul>
		</li>
	</ul>
	<!-- End Top Right -->
</div>