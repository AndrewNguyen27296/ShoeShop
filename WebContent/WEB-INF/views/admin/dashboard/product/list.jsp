<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
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
				<div class="panel-title">Details</div>
				<div class="panel-body table-responsive">

					<table id="example0" class="table display">
						<thead>
							<tr>
								<th>#</th>
								<th>Name</th>								
								<th>Brand</th>
								<th>Sizes</th>
								<th>Price</th>
								<th>Discount</th>
								<th>Description</th>
								<th>Lastest</th>
							</tr>
						</thead>

						<tfoot>
							<tr>
								<th>#</th>
								<th>Name</th>								
								<th>Brand</th>
								<th>Sizes</th>
								<th>Price</th>
								<th>Discount</th>
								<th>Description</th>
								<th>Lastest</th>
							</tr>
						</tfoot>

						<tbody>
							<c:forEach var="p" items="${prods}">
							<tr>
								<td><img src="assets/images/products/${p.productImages[0].image}" width="80" height="60"></td>
								<td>${p.name}</td>
								<td>${p.brand.name}</td>
								<td>
									<c:forEach var="z" items="${p.productSizes}">
										${z.size.sizeVN},
									</c:forEach>
								</td>
								<td><fmt:formatNumber value="${p.price}" pattern="###,###.0"/> VNĐ</td>
								<td>${p.discount}%</td>
								<td>${p.description}</td>
								<td>${p.createDate}</td>
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