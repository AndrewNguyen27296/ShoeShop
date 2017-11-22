<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.request.contextPath}/" />
<meta charset="utf-8" />
<title>Runners sport  A Ecommerce Category Flat a Bootstrap  Website Template | Home :: w3layouts</title>
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="assets/css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<script src="assets/js/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/easing.js"></script>
<link rel="stylesheet" href="assets/css/flexslider.css" type="text/css" media="screen" />
<link href="assets/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<link href="assets/css/form.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="assets/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="assets/js/menu_jquery.js"></script>
<script src="assets/js/jquery.easydropdown.js"></script>
<script src="assets/js/jquery.etalage.min.js"></script>
<link rel="stylesheet" href="assets/css/footer-distributed-with-address-and-phones.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 800,
					source_image_height: 1000,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>

</head>


<body>
	<!-- Header -->
	<jsp:include page="user/layout/header.jsp" />

	<!-- Header Navigator -->
	<jsp:include page="user/layout/navigator.jsp" />

	<!-- Banner Ads -->
	<jsp:include page="user/layout/banner.jsp" />

	<!-- Instock -->
	<jsp:include page="user/layout/instock.jsp" />

	<div class="featured">
		<div class="container">
			<!-- Body Contents -->
			<jsp:include page="${param.view}" />

			<!-- Sidebar -->
			<jsp:include page="user/layout/sidebar.jsp" />
		</div>
	</div>

	<!-- Footer -->
	<jsp:include page="user/layout/footer.jsp" />
</body>
</html>

