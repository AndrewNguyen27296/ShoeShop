<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

<!-- ================================================
Data Tables
================================================ -->
<script src="assets/admin/template/js/datatables/datatables.min.js"></script>
<script>
	$(function() {
		$('#ss-table').DataTable();
	});
</script>
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
<div class="container-widget">
	<!-- Start Row -->
	<div class="row">

		<!-- Start Panel -->
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-title">
					Details
					<a href="admin/dashboard/add/product/" class="btn btn-sm btn-info pull-right">
						<span style="text-transform:capitalize; color:#fff;">Add new</span>
					</a>
				</div>
				<div class="panel-body table-responsive">

					<table id="ss-table" class="table display">
						<thead>
							<tr>
								<th>#</th>
								<th>Image</th>
								<th>Name</th>	
								<th>Price</th>
								<th>Discount</th>
								<th>Lastest</th>								
								<th>Sizes & Quantity</th>
								<th>*</th>
								<th>*</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach var="p" items="${prods}" varStatus="i">
							<tr>
								<td>${i.count}</td>
								<td><img src="assets/upload/products/files/${p.productImages[0].image}" width="80" height="60"></td>
								<td>${p.name}</td>
								<td><fmt:formatNumber value="${p.price}" pattern="###,###"/></td>
								<td>${p.discount}%</td>
								<td><fmt:formatDate value="${p.createDate}" pattern="dd-MM-yyyy"/></td>								
								<td>
									<c:forEach var="z" items="${p.productSizes}">
										${z.size.sizeVN}__${z.quantity} , 
									</c:forEach>
								</td>
								<td><a href="admin/dashboard/edit/product/${p.id}" class="btn btn-sm btn-primary">Edit</a></td>
								<td><a href="admin/dashboard/delete/product/${p.id}" class="btn btn-xs btn-danger"><i class="fa fa-remove"></i></a></td>
							</tr>
							</c:forEach>
						</tbody>
					</table>


				</div>

			</div>
		</div>
		<!-- End Panel -->
	</div>
	<!-- End Row -->
</div>
<!-- END CONTAINER -->
<!-- //////////////////////////////////////////////////////////////////////////// -->