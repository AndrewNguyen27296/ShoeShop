<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt_rt"%>
<h2>Revenue by customer</h2>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
 <script type="text/javascript">
   google.charts.load('current', {'packages':['corechart']});
   google.charts.setOnLoadCallback(drawChart);

   function drawChart() {
     var data = google.visualization.arrayToDataTable([
       ['Khách hàng', 'Doanh số'],
       	<c:forEach var="a" items="${items}">
			["${a[0]}", ${a[1]}],
		</c:forEach>
	]);

     var options = {
       title: 'Doanh số bán hàng theo từng khách hàng',
       curveType: 'function',
       legend: { position: 'bottom' }
     };

     var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

     chart.draw(data, options);
   }
 </script>
<div id="curve_chart" style="width: 100%; height: 400px;"></div>
<table class="table">
	<thead>
		<tr>
			<th>Customer </th>
			<th>Sales </th>
			<th>Quantiy </th>
			<th>Min Price </th>
			<th>Max Price </th>
			<th>Avg Price </th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="a" items="${items}">
			<tr>
				<td>${a[0]}</td>
				<td><f:formatNumber value="${a[1]}" maxFractionDigits="2" minFractionDigits="2"/> Đ</td>				
				<td>${a[2]}</td>
				<td><f:formatNumber value="${a[3]}" maxFractionDigits="2" minFractionDigits="2"/> Đ</td>
				<td><f:formatNumber value="${a[4]}" maxFractionDigits="2" minFractionDigits="2"/> Đ</td>
				<td><f:formatNumber value="${a[5]}" maxFractionDigits="2" minFractionDigits="2"/> Đ</td>
			</tr>
		</c:forEach>
	</tbody>
</table>