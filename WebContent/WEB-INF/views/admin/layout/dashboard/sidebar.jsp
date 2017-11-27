<%@ page pageEncoding="utf-8"%>
<style>
.sidebar {
	position: fixed;
}
</style>
<div class="sidebar clearfix">
	<ul class="sidebar-panel nav">
		<li class="sidetitle">ADMIN DASHBOARD</li>
		<li>
			<a href="admin/dashboard/">
				<span class="icon color5"><i class="fa fa-home"></i></span> Dashboard
			</a>
		</li>
		<li>
			<a href="admin/dashboard/list/products/">
				<span class="icon color5"><i class="fa fa-home"></i></span> Products
			</a>
		</li>
		<li>
			<a href="admin/dashboard/list/categories/">
				<span class="icon color5"><i class="fa fa-home"></i></span> Categories
			</a>
		</li>
		<li>
			<a href="admin/dashboard/list/brands/">
				<span class="icon color5"><i class="fa fa-home"></i></span> Brands
			</a>
		</li>
		<li>
			<a href="admin/dashboard/list/materials/">
				<span class="icon color5"><i class="fa fa-home"></i></span> Materials
			</a>
		</li>
		<li><a href="javascript:void(0)"><span class="icon color7"><i class="fa fa-bar-chart"></i></span>Revenues Statistic<span class="caret"></span></a>
		    <ul>
		      <li><a href="admin/dashboard/revenue/by/product/">By Products</a></li>
		      <li><a href="admin/dashboard/revenue/by/category/">By Categories</a></li>		      
		      <li><a href="admin/dashboard/revenue/by/brand/">By Brands</a></li>
		      <li><a href="admin/dashboard/revenue/by/customer/">By Customers</a></li>
		      <li><a href="admin/dashboard/revenue/by/month/">By Month</a></li>
		      <li><a href="admin/dashboard/revenue/by/year/">By Year</a></li>
		      <li><a href="admin/dashboard/revenue/by/quarter/">By Quarter</a></li>
		    </ul>
		</li>
	</ul>
</div>