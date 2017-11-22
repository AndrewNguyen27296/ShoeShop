<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<link rel="stylesheet" href="assets/css/footer-distributed-with-address-and-phones.css">
	
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="assets/css/demo.css">

<div class="footer">
	<footer class="footer-distributed">

			<div class="footer-left">

				<span><img src="assets/images/logo1.png"></span>

			</div>

			<div class="footer-center">

				<div>
					<i class="fa fa-map-marker"></i>
					<p><span><s:message code="footer.address"></s:message></span><s:message code="footer.city"></s:message></p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p>+284 999 999</p>
				</div>

				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="mailto:support@company.com">runnersport@company.com</a></p>
				</div>

			</div>

			<div class="footer-right">

				<p class="footer-company-about">
					<span><s:message code="footer.contact"/></span>
					</p>

				<div class="footer-icons">

					<a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
					<a href="https://www.facebook.com/"><i class="fa fa-twitter"></i></a>
					<a href="https://www.facebook.com/"><i class="fa fa-linkedin"></i></a>
					<a href="https://www.facebook.com/"><i class="fa fa-github"></i></a>

				</div>

			</div>

		</footer>
</div>