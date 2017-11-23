<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="${pageContext.request.contextPath}/" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Kode is a Premium Bootstrap Admin Template, It's responsive, clean coded and mobile friendly">
<meta name="keywords"
	content="bootstrap, admin, dashboard, flat admin template, responsive," />
<title>Runner's Sport | Admin Dashboard</title>
<!-- ========== Css Files ========== -->

<link href="assets/admin/template/css/root.css" rel="stylesheet">
<link href="assets/vendor/toastr/build/toastr.min.css" rel="stylesheet">

<!-- ================================================
jQuery Library
================================================ -->
<script type="text/javascript"
	src="assets/admin/template/js/jquery.min.js"></script>

<!-- ================================================
Bootstrap Core JavaScript File
================================================ -->
<script src="assets/admin/template/js/bootstrap/bootstrap.min.js"></script>

<!-- ================================================
Plugin.js - Some Specific JS codes for Plugin Settings
================================================ -->
<script type="text/javascript" src="assets/admin/template/js/plugins.js"></script>

<!-- ================================================
Bootstrap Select
================================================ -->
<script type="text/javascript"
	src="assets/admin/template/js/bootstrap-select/bootstrap-select.js"></script>

<!-- ================================================
Bootstrap Toggle
================================================ -->
<script type="text/javascript"
	src="assets/admin/template/js/bootstrap-toggle/bootstrap-toggle.min.js"></script>
	
<!-- ================================================
Summernote
================================================ -->
<script type="text/javascript"
	src="assets/admin/template/js/summernote/summernote.min.js"></script>

<!-- ================================================
Flot Chart
================================================ -->
<!-- main file -->
<script type="text/javascript"
	src="assets/admin/template/js/flot-chart/flot-chart.js"></script>
<!-- time.js -->
<script type="text/javascript"
	src="assets/admin/template/js/flot-chart/flot-chart-time.js"></script>
<!-- stack.js -->
<script type="text/javascript"
	src="assets/admin/template/js/flot-chart/flot-chart-stack.js"></script>
<!-- pie.js -->
<script type="text/javascript"
	src="assets/admin/template/js/flot-chart/flot-chart-pie.js"></script>
<!-- demo codes -->
<script type="text/javascript"
	src="assets/admin/template/js/flot-chart/flot-chart-plugin.js"></script>

<!-- ================================================
Chartist
================================================ -->
<!-- main file -->
<script type="text/javascript"
	src="assets/admin/template/js/chartist/chartist.js"></script>
<!-- demo codes -->
<script type="text/javascript"
	src="assets/admin/template/js/chartist/chartist-plugin.js"></script>

<!-- ================================================
Easy Pie Chart
================================================ -->
<!-- main file -->
<script type="text/javascript"
	src="assets/admin/template/js/easypiechart/easypiechart.js"></script>
<!-- demo codes -->
<script type="text/javascript"
	src="assets/admin/template/js/easypiechart/easypiechart-plugin.js"></script>

<!-- ================================================
Sparkline
================================================ -->
<!-- main file -->
<script type="text/javascript"
	src="assets/admin/template/js/sparkline/sparkline.js"></script>
<!-- demo codes -->
<script type="text/javascript"
	src="assets/admin/template/js/sparkline/sparkline-plugin.js"></script>

<!-- ================================================
Rickshaw
================================================ -->
<!-- d3 -->
<script src="assets/admin/template/js/rickshaw/d3.v3.js"></script>
<!-- main file -->
<script src="assets/admin/template/js/rickshaw/rickshaw.js"></script>
<!-- demo codes -->
<script src="assets/admin/template/js/rickshaw/rickshaw-plugin.js"></script>

<!-- ================================================
Data Tables
================================================ -->
<script src="assets/admin/template/js/datatables/datatables.min.js"></script>

<!-- ================================================
Sweet Alert
================================================ -->
<script src="assets/admin/template/js/sweet-alert/sweet-alert.min.js"></script>

<!-- ================================================
Kode Alert
================================================ -->
<script src="assets/admin/template/js/kode-alert/main.js"></script>

<!-- ================================================
Gmaps
================================================ -->
<!-- google maps api -->
<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
<!-- main file -->
<script src="assets/admin/template/js/gmaps/gmaps.js"></script>
<!-- demo codes -->
<script src="assets/admin/template/js/gmaps/gmaps-plugin.js"></script>

<!-- ================================================
jQuery UI
================================================ -->
<script type="text/javascript"
	src="assets/admin/template/js/jquery-ui/jquery-ui.min.js"></script>

<!-- ================================================
Moment.js
================================================ -->
<script type="text/javascript"
	src="assets/admin/template/js/moment/moment.min.js"></script>

<!-- ================================================
Full Calendar
================================================ -->
<script type="text/javascript"
	src="assets/admin/template/js/full-calendar/fullcalendar.js"></script>

<!-- ================================================
Bootstrap Date Range Picker
================================================ -->
<script type="text/javascript"
	src="assets/admin/template/js/date-range-picker/daterangepicker.js"></script>


<script type="text/javascript"
	src="assets/vendor/toastr/build/toastr.min.js"></script>
<script type="text/javascript"
	src="assets/admin/js/show-toast.js"></script>
</head>
<body>
	<!-- Start Page Loading -->
	<div class="loading">
		<img src="assets/admin/img/loading.gif" alt="loading-img">
	</div>
	<!-- End Page Loading -->
	<!-- //////////////////////////////////////////////////////////////////////////// -->
	<!-- START TOP -->
	<jsp:include page="admin/layout/dashboard/header.jsp" />
	<!-- END TOP -->
	<!-- //////////////////////////////////////////////////////////////////////////// -->


	<!-- //////////////////////////////////////////////////////////////////////////// -->
	<!-- START SIDEBAR -->
	<jsp:include page="admin/layout/dashboard/sidebar.jsp" />
	<!-- END SIDEBAR -->
	<!-- //////////////////////////////////////////////////////////////////////////// -->

	<!-- //////////////////////////////////////////////////////////////////////////// -->
	<!-- START CONTENT -->
	<div class="content">
		<jsp:include page="${param.view}" />
		<!-- Start Footer -->
		<jsp:include page="admin/layout/dashboard/footer.jsp" />
		<!-- End Footer -->
	</div>
	<!-- End Content -->
	<!-- //////////////////////////////////////////////////////////////////////////// -->


	<!-- //////////////////////////////////////////////////////////////////////////// -->
	<!-- START SIDEPANEL -->
	<jsp:include page="admin/layout/dashboard/sidepanel.jsp" />
	<!-- END SIDEPANEL -->
	<!-- //////////////////////////////////////////////////////////////////////////// -->


	<!-- ================================================
Below codes are only for index widgets
================================================ -->
	<!-- Today Sales -->
	<script>
		// set up our data series with 50 random data points

		var seriesData = [ [], [], [] ];
		var random = new Rickshaw.Fixtures.RandomData(20);

		for (var i = 0; i < 110; i++) {
			random.addData(seriesData);
		}

		// instantiate our graph!

		var graph = new Rickshaw.Graph({
			element : document.getElementById("todaysales"),
			renderer : 'bar',
			series : [ {
				color : "#33577B",
				data : seriesData[0],
				name : 'Photodune'
			}, {
				color : "#77BBFF",
				data : seriesData[1],
				name : 'Themeforest'
			}, {
				color : "#C1E0FF",
				data : seriesData[2],
				name : 'Codecanyon'
			} ]
		});

		graph.render();

		var hoverDetail = new Rickshaw.Graph.HoverDetail(
				{
					graph : graph,
					formatter : function(series, x, y) {
						var date = '<span class="date">'
								+ new Date(x * 1000).toUTCString() + '</span>';
						var swatch = '<span class="detail_swatch" style="background-color: ' + series.color + '"></span>';
						var content = swatch + series.name + ": " + parseInt(y)
								+ '<br>' + date;
						return content;
					}
				});
	</script>

	<!-- Today Activity -->
	<script>
		// set up our data series with 50 random data points

		var seriesData = [ [], [], [] ];
		var random = new Rickshaw.Fixtures.RandomData(20);

		for (var i = 0; i < 50; i++) {
			random.addData(seriesData);
		}

		// instantiate our graph!

		var graph = new Rickshaw.Graph({
			element : document.getElementById("todayactivity"),
			renderer : 'area',
			series : [ {
				color : "#9A80B9",
				data : seriesData[0],
				name : 'London'
			}, {
				color : "#CDC0DC",
				data : seriesData[1],
				name : 'Tokyo'
			} ]
		});

		graph.render();

		var hoverDetail = new Rickshaw.Graph.HoverDetail(
				{
					graph : graph,
					formatter : function(series, x, y) {
						var date = '<span class="date">'
								+ new Date(x * 1000).toUTCString() + '</span>';
						var swatch = '<span class="detail_swatch" style="background-color: ' + series.color + '"></span>';
						var content = swatch + series.name + ": " + parseInt(y)
								+ '<br>' + date;
						return content;
					}
				});
	</script>


</body>
</html>