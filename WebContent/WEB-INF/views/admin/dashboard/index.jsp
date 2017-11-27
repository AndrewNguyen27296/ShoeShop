<%@ page pageEncoding="utf-8"%>
<!-- Start Page Header -->
<div class="page-header">
	<h1 class="title">Dashboard</h1>
	<ol class="breadcrumb">
		<li class="active">This is a quick overview of website's working.</li>
	</ol>

	<!-- Start Page Header Right Div -->
	<div class="right">
		<div class="btn-group" role="group" aria-label="...">
			<a href="admin/dashboard/" class="btn btn-light">Dashboard</a> <a href="#"
				class="btn btn-light"><i class="fa fa-refresh"></i></a> <a href="#"
				class="btn btn-light"><i class="fa fa-search"></i></a> <a href="#"
				class="btn btn-light" id="topstats"><i class="fa fa-line-chart"></i></a>
		</div>
	</div>
	<!-- End Page Header Right Div -->

</div>
<!-- End Page Header -->
<!-- //////////////////////////////////////////////////////////////////////////// -->
<!-- START CONTAINER -->
<div class="container-widget">
	<!-- Start Top Stats -->
	<div class="col-md-12">
		<ul class="topstats clearfix">
			<li class="arrow"></li>
			<li class="col-xs-6 col-lg-2"><span class="title"><i
					class="fa fa-dot-circle-o"></i> Today Profit</span>
				<h3>$36.45</h3> <span class="diff"><b class="color-down"><i
						class="fa fa-caret-down"></i> 26%</b> from yesterday</span></li>
			<li class="col-xs-6 col-lg-2"><span class="title"><i
					class="fa fa-calendar-o"></i> This Week</span>
				<h3>$96.25</h3> <span class="diff"><b class="color-up"><i
						class="fa fa-caret-up"></i> 26%</b> from last week</span></li>
			<li class="col-xs-6 col-lg-2"><span class="title"><i
					class="fa fa-shopping-cart"></i> Total Sales</span>
				<h3 class="color-up">696</h3> <span class="diff"><b
					class="color-up"><i class="fa fa-caret-up"></i> 26%</b> from last
					month</span></li>
			<li class="col-xs-6 col-lg-2"><span class="title"><i
					class="fa fa-users"></i> Visitors</span>
				<h3>960</h3> <span class="diff"><b class="color-down"><i
						class="fa fa-caret-down"></i> 26%</b> from yesterday</span></li>
			<li class="col-xs-6 col-lg-2"><span class="title"><i
					class="fa fa-eye"></i> Page View</span>
				<h3 class="color-up">46.230</h3> <span class="diff"><b
					class="color-down"><i class="fa fa-caret-down"></i> 26%</b> from
					yesterday</span></li>
			<li class="col-xs-6 col-lg-2"><span class="title"><i
					class="fa fa-clock-o"></i> Avarage Time</span>
				<h3 class="color-down">
					2:10<small>min</small>
				</h3> <span class="diff"><b class="color-up"><i
						class="fa fa-caret-up"></i> 26%</b> from last week</span></li>
		</ul>
	</div>
	<!-- End Top Stats -->


	<!-- Start First Row -->
	<div class="row">

		<!-- Start Chart Daily -->
		<div class="col-md-12 col-lg-7">
			<div class=" panel-widget widget chart-with-stats clearfix"
				style="height: 450px;">

				<div class="col-sm-12" style="height: 450px;">
					<h4 class="title">
						TODAY SALES<small>Last update: 1 Hours ago</small>
					</h4>
					<div class="top-label">
						<h2>11.291</h2>
						<h4>Today Total</h4>
					</div>
					<div class="bigchart" id="todaysales"></div>
				</div>
				<div class="right" style="height: 450px;">
					<h4 class="title">PAGE VIEW</h4>
					<!-- start stats -->
					<ul class="widget-inline-list clearfix">
						<li class="col-12"><span>962</span>Themeforest<i
							class="chart sparkline-green"></i></li>
						<li class="col-12"><span>367</span>Codecanyon<i
							class="chart sparkline-blue"></i></li>
						<li class="col-12"><span>92</span>Photodune<i
							class="chart sparkline-red"></i></li>
					</ul>
					<!-- end stats -->
				</div>


			</div>
		</div>
		<!-- End Chart Daily -->


		<!-- Start Files -->
		<div class="col-md-12 col-lg-5">
			<div class="panel panel-widget" style="height: 450px;">
				<div class="panel-title">
					My Files <span class="label label-danger">29</span>
					<ul class="panel-tools">
						<li><a class="icon"><i class="fa fa-refresh"></i></a></li>
						<li><a class="icon closed-tool"><i class="fa fa-times"></i></a></li>
					</ul>
				</div>
				<div class="panel-body table-responsive">

					<table class="table table-dic table-hover ">
						<tbody>
							<tr>
								<td><i class="fa fa-folder-o"></i>Projects</td>
								<td>Folder</td>
								<td class="text-r">27/2/2015 12:34 AM</td>
							</tr>
							<tr>
								<td><i class="fa fa-file-archive-o"></i>Backup</td>
								<td>Zip</td>
								<td class="text-r">27/2/2015 12:34 AM</td>
							</tr>
							<tr>
								<td><i class="fa fa-file-code-o"></i>Kode Theme</td>
								<td>Html</td>
								<td class="text-r">27/2/2015 12:34 AM</td>
							</tr>
							<tr>
								<td><i class="fa fa-file-pdf-o"></i>Documents</td>
								<td>Pdf</td>
								<td class="text-r">27/2/2015 12:34 AM</td>
							</tr>
							<tr>
								<td><i class="fa fa-folder-o"></i>Themes</td>
								<td>Folder</td>
								<td class="text-r">27/2/2015 12:34 AM</td>
							</tr>
							<tr>
								<td><i class="fa fa-folder-o"></i>Uploaded Files</td>
								<td>Folder</td>
								<td class="text-r">27/2/2015 12:34 AM</td>
							</tr>
							<tr>
								<td><i class="fa fa-folder-o"></i>Personal Files</td>
								<td>Folder</td>
								<td class="text-r">27/2/2015 12:34 AM</td>
							</tr>
						</tbody>
					</table>

				</div>
			</div>
		</div>
		<!-- End Files -->

	</div>
	<!-- End First Row -->


	<!-- Start Second Row -->
	<div class="row">



		<!-- Start Today Activity -->
		<div class="col-md-12 col-lg-3">
			<div class="panel panel-widget" style="height: 380px;">
				<div class="panel-title">
					TODAY ACTIVITY <span class="label label-success">9</span>
					<ul class="panel-tools panel-tools-hover">
						<li><a class="icon"><i class="fa fa-refresh"></i></a></li>
						<li><a class="icon closed-tool"><i class="fa fa-times"></i></a></li>
					</ul>
				</div>
				<div class="panel-body">

					<ul class="widget-inline-list clearfix">
						<li class="col-4"><span>1:52:22</span>Active Time</li>
						<li class="col-4"><span>60%</span>Completed</li>
						<li class="col-4"><span>0:11:46</span>Break Time</li>
					</ul>

					<div id="todayactivity" class="chart-on-bottom"></div>

				</div>
			</div>
		</div>
		<!-- End Today Activity -->

		<!-- Start Server Status -->
		<div class="col-md-12 col-lg-6">
			<div class="panel panel-widget" style="height: 380px;">
				<div class="panel-title">
					SERVER STATUS <span class="label label-default">196</span>
					<ul class="panel-tools panel-tools-hover">
						<li><a class="icon"><i class="fa fa-refresh"></i></a></li>
						<li><a class="icon closed-tool"><i class="fa fa-times"></i></a></li>
					</ul>
				</div>
				<div class="panel-body">

					<ul class="widget-inline-list clearfix">
						<li class="col-3 color10"><span>28.9GB</span>Total Usage</li>
						<li class="col-3"><span>92%</span>Space Left</li>
						<li class="col-3 color7"><span>22%</span>CPU</li>
						<li class="col-3"><span>512MB</span>Total RAM</li>
					</ul>

					<div id="realtime" class="flotchart-placeholder"
						style="height: 190px;"></div>

				</div>
			</div>
		</div>
		<!-- End Server Status -->

		<!-- Start Profile Widget -->
		<div class="col-md-12 col-lg-3">
			<div class="widget profile-widget" style="height: 380px;">
				<img src="assets/admin/template/img/profileimg.png" class="profile-image" alt="img">
				<h1>Jonathan Doe</h1>
				<p>
					<i class="fa fa-map-marker"></i> London
				</p>
				<a href="#" class="btn btn-sm">Follow</a>
				<ul class="stats widget-inline-list clearfix">
					<li class="col-4"><span>2.109</span>Followers</li>
					<li class="col-4"><span>596</span>Photos</li>
					<li class="col-4"><span>902</span>Like</li>
				</ul>
			</div>
		</div>
		<!-- End Profile Widget -->


	</div>
	<!-- End Second Row -->


	<!-- Start Third Row -->
	<div class="row">


		<!-- Start General Stats -->
		<div class="col-md-12 col-lg-6">
			<div class="panel panel-widget" style="height: 205px;">
				<div class="panel-title">General Stats</div>
				<div class="panel-body">

					<div class="easypie margin-b-50" data-percent="82">
						<span>82%</span>New Visit
					</div>
					<div class="easypie margin-b-50" data-percent="30">
						<span>30%</span>Order
					</div>
					<div class="easypie margin-b-50 margin-b-40" data-percent="62">
						<span>62%</span>Page View
					</div>
					<div class="easypie margin-b-50" data-percent="15">
						<span>15%</span>Client
					</div>
					<div class="easypie margin-b-50" data-percent="45">
						<span>45%</span>Storage
					</div>
					<div class="easypie margin-b-50" data-percent="75">
						<span>76%</span>Comments
					</div>

				</div>
			</div>
		</div>
		<!-- End General Stats -->

		<!-- Start TwitterBox -->
		<div class="col-md-6 col-lg-3">
			<div class="widget socialbox"
				style="background: #02A8F3; height: 205px;">

				<p class="text">Never in all their history have men been able
					truly...</p>
				<p class="text-info">22 May, 2015 via mobile</p>

				<div class="logo">
					<i class="fa fa-twitter"></i>
				</div>

				<ul class="info">
					<li><i class="fa fa-retweet"></i>694</li>
					<li><i class="fa fa-star-o"></i>2.192</li>
				</ul>

			</div>
		</div>
		<!-- End TwitterBox -->

		<!-- Start FacebookBox -->
		<div class="col-md-6 col-lg-3">
			<div class="widget socialbox"
				style="background: #47639E; height: 205px;">

				<p class="text">Science has not yet mastered prophecy.</p>
				<p class="text-info">22 May, 2015 via mobile</p>

				<div class="logo">
					<i class="fa fa-facebook"></i>
				</div>

				<ul class="info">
					<li><i class="fa fa-thumbs-up"></i>694</li>
					<li><i class="fa fa-comment"></i>2.192</li>
				</ul>

			</div>
		</div>
		<!-- End FacebookBox -->

	</div>
	<!-- End Third Row -->
</div>
<!-- END CONTAINER -->
<!-- //////////////////////////////////////////////////////////////////////////// -->