<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>

<div class="col-md-3 span_1_of_right">
	<section class="sky-form">
		<div class="product_right">
			<h3 class="m_2" style="font-family:arial; font-weight: 500;"><s:message code="sidebar.categories"/></h3>
			<div class="list-group">
  				<a href="category/men/" class="list-group-item list-group-item-success"><s:message code="nav.men"/></a>
  				<a href="category/women/" class="list-group-item list-group-item-info"><s:message code="nav.women"/></a>
  				<a href="category/kid/" class="list-group-item list-group-item-warning"><s:message code="nav.kid"/></a>
  				<a href="category/sport/" class="list-group-item list-group-item-danger"><s:message code="nav.sport"/></a>
			</div>
		</div>
	</section>

	<section class="sky-form">
		<div class="sellers">
			<h3 class="m_2" style="font-family:arial; font-weight: 500;"><s:message code="sidebar.special"/></h3>
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<c:forEach items="${special}" var="spec">
						<li>
							<div class="tittle">
								<a href="detail/${spec.id}"><img src="assets/upload/products/files/${spec.productImages[0].image}" class="img-responsive" alt="" /></a>
								<h6>${spec.name}</h6>
								<p>
								<f:formatNumber value="${spec.price}" maxFractionDigits="0"></f:formatNumber>
								VNĐ</p>
								<p>${spec.brand.name}</p>
								<a class="show1" href="#"><s:message code="banner.button"/></a>
							</div>
						</li>
						</c:forEach>
					</ul>
				</div>
			</section>

			<!-- FlexSlider -->
			<script src="assets/js/jquery.flexslider.js"></script>
			<script>
				/*$(function(){
				  SyntaxHighlighter.all();
				});*/
				$(window).load(function(){
				  $('.flexslider').flexslider({
					animation: "slide",
					start: function(slider){
					  $('body').removeClass('loading');
					}
				  });
				});
		  	</script>
			<!-- FlexSlider -->
		</div>
	</section>
</div>
<div class="clearfix"></div>
